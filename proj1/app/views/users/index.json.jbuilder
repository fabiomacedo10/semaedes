json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :phone, :description, :picture
  json.url user_url(user, format: :json)
end
