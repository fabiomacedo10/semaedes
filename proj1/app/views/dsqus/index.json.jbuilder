json.array!(@dsqus) do |dsqu|
  json.extract! dsqu, :id, :user_name, :body, :issue_id
  json.url dsqu_url(dsqu, format: :json)
end
