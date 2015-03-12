class CreateCountryCurrencies < ActiveRecord::Migration
  def change
    create_table :country_currencies do |t|
      t.references :country, index: true
      t.references :currency, index: true

      t.timestamps
    end
  end
end
