class AddCountryToLocation < ActiveRecord::Migration
  def change
    add_column :locations, :country, :string
    add_index :locations, :zip
  end
end
