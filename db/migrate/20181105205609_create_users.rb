class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.references :document_type, foreign_key: true
      t.string :documentNumber
      t.string :name
      t.string :lastname
      t.string :gender
      t.date :birthday
      t.references :blood_type, foreign_key: true
      t.references :neighborhood, foreign_key: true
      t.string :address
      t.string :email
      t.string :phone
      t.string :cellphone
      t.references :education_level, foreign_key: true
      t.string :pictureMedium
      t.string :pictureThumbnail
      t.string :password
      t.integer :civicoins
      t.string :nationalityrails

      t.timestamps
    end
  end
end
