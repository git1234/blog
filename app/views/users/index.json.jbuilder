json.array!(@users) do |user|
  json.extract! user, :name, :pass, :age, :profile, :hobby
  json.url user_url(user, format: :json)
end
