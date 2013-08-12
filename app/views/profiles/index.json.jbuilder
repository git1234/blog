json.array!(@profiles) do |profile|
  json.extract! profile, :name, :age, :hobby, :detail
  json.url profile_url(profile, format: :json)
end
