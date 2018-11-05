class User < ApplicationRecord
  belongs_to :document_type
  belongs_to :blood_type
  belongs_to :neighborhood
  belongs_to :education_level
end
