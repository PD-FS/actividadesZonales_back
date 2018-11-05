class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.string :description
      t.references :institution, foreign_key: true
      t.references :category, foreign_key: true
      t.date :start_time
      t.date :end_time
      t.string :profile_pic
      t.integer :capacity
      t.boolean :programe_calendar
      t.boolean :required_acceptance

      t.timestamps
    end
  end
end
