json.extract! activity, :id, :name, :description, :Institution_id, :category_id, :start_time, :end_time, :profile_pic, :capacity, :programe_calendar, :required_acceptance, :created_at, :updated_at
json.url activity_url(activity, format: :json)
