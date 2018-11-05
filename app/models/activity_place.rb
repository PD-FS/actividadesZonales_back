class ActivityPlace < ApplicationRecord
  belongs_to :place
  belongs_to :activity
end
