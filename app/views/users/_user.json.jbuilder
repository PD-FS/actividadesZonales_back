json.extract! user, :id, :document_type_id, :documentNumber, :name, :lastname, :gender, :birthday, :blood_type_id, :neighborhood_id, :address, :email, :phone, :cellphone, :education_level_id, :pictureMedium, :pictureThumbnail, :password, :civicoins, :nationalityrails, :created_at, :updated_at
json.url user_url(user, format: :json)
