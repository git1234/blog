json.array!(@comments) do |comment|
  json.extract! comment, :entry_id, :comment, :user_id
  json.url comment_url(comment, format: :json)
end
