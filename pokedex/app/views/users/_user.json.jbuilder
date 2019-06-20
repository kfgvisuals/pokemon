json.extract! user, :id, :name, :username, :userpic, :created_at, :updated_at
json.url user_url(user, format: :json)
