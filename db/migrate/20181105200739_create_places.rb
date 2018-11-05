class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places do |t|
      t.string :name
      t.string :description
      t.string :address
      t.references :neighborhood, foreign_key: true
      t.string :pictureMedium
      t.decimal :latitude
      t.decimal :longitude
      t.integer :like
      t.integer :not_like

      t.timestamps
    end
  end
end
