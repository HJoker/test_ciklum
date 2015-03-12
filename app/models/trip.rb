class Trip < ActiveRecord::Base
  belongs_to :country

  validates :visit_date, presence: true
end
