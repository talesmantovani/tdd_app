json.array!(@updates) do |update|
  json.extract! update, :id, :title, :caption
  json.url update_url(update, format: :json)
end
