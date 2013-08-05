json.array!(@entries) do |entry|
  json.extract! entry, :weblog_id, :title, :body
  json.url entry_url(entry, format: :json)
end
