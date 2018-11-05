class CreateDepartments < ActiveRecord::Migration[5.0]
  def change
    create_table :departments do |t|
      t.string :name
      t.decimal :code
      t.decimal :area
      t.string :shape
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps
    end
  end
end
