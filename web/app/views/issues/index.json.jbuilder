json.array!(@issues) do |issue|
  json.extract! issue, :id, :title, :status, :picture, :description, :address
  json.url issue_url(issue, format: :json)
end
