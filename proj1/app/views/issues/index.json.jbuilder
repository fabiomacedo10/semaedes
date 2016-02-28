json.array!(@issues) do |issue|
  json.extract! issue, :id, :title, :picture, :address, :descriptiion, :status
  json.url issue_url(issue, format: :json)
end
