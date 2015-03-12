class Country < ActiveRecord::Base
  has_many :trips
  has_many :country_currency, dependent: :destroy
  has_many :currencies, through: :country_currency

  validates :name, presence: true, uniqueness: true

  def visited?
    trips.present?
  end
end
