json.array!(@comments) do |comment|
  json.extract! comment, :id, :user_name, :body, :issue_id
  json.url comment_url(comment, format: :json)
end
