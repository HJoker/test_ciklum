class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.integer :country_id
      t.date :visit_date

      t.timestamps
    end
  end
end
