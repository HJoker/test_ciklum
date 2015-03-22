class Trip < ActiveRecord::Base
  belongs_to :country

  validates :visit_date, presence: true

  delegate :name, to: :country, prefix: true, allow_nil: true
end
