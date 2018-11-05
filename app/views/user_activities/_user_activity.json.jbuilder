json.extract! user_activity, :id, :activity_id, :user_id, :acceptance, :state, :created_at, :updated_at
json.url user_activity_url(user_activity, format: :json)
