json.array!(@weblogs) do |weblog|
  json.extract! weblog, :user_id, :blog_name
  json.url weblog_url(weblog, format: :json)
end
