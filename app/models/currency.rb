class Currency < ActiveRecord::Base
  belongs_to :country

  validates :name, presence: true, uniqueness: true

  def collected?
    country.visited?
  end
end
