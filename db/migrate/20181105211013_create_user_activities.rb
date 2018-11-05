class CreateUserActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :user_activities do |t|
      t.references :activity, foreign_key: true
      t.references :user, foreign_key: true
      t.boolean :acceptance
      t.string :state

      t.timestamps
    end
  end
end
