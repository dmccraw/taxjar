class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :state
      t.string :zip
      t.decimal :state_rate, precision: 7, scale: 3
      t.string :city
      t.decimal :city_rate, precision: 7, scale: 3
      t.string :county
      t.decimal :county_rate, precision: 7, scale: 3
      t.decimal :combined_district_rate, precision: 7, scale: 3
      t.decimal :combined_rate, precision: 7, scale: 3

      t.timestamps null: false
    end
  end
end
