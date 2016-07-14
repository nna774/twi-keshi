json.array!(@deletes) do |delete|
  json.extract! delete, :id
  json.url delete_url(delete, format: :json)
end
