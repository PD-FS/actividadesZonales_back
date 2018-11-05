class CreateUpzs < ActiveRecord::Migration[5.0]
  def change
    create_table :upzs do |t|
      t.string :name
      t.references :district_area, foreign_key: true
      t.string :shape
      t.decimal :latitude
      t.decimal :longitude
      t.string :code

      t.timestamps
    end
  end
end
