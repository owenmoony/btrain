class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :address
      t.string :state
      t.string :suburb
      t.string :postcode
      t.string :details

      t.timestamps
    end
  end
end
