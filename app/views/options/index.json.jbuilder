json.array!(@options) do |option|
  json.extract! option, :id, :text, :correct, :quistion_id
  json.url option_url(option, format: :json)
end
