class CreateDistrictAreas < ActiveRecord::Migration[5.0]
  def change
    create_table :district_areas do |t|
      t.string :name
      t.integer :initialZipCode
      t.integer :lastZipCode
      t.decimal :surfaceArea
      t.decimal :population
      t.decimal :density
      t.string :shape
      t.decimal :latitude
      t.decimal :longitude
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
