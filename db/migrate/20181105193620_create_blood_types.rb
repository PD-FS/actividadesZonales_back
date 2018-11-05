class CreateBloodTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :blood_types do |t|
      t.string :group
      t.string :rh

      t.timestamps
    end
  end
end
