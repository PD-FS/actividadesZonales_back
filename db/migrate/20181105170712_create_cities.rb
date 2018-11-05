class CreateCities < ActiveRecord::Migration[5.0]
  def change
    create_table :cities do |t|
      t.string :name
      t.decimal :altitude
      t.decimal :latitude
      t.decimal :longitude
      t.string :flag
      t.string :shape
      t.references :department, foreign_key: true
      t.string :code

      t.timestamps
    end
  end
end
