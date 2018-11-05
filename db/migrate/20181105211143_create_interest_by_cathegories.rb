class CreateInterestByCathegories < ActiveRecord::Migration[5.0]
  def change
    create_table :interest_by_cathegories do |t|
      t.references :user, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
