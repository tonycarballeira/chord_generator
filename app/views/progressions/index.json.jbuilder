json.array!(@progressions) do |progression|
  json.extract! progression, :id, :name, :description
  json.url progression_url(progression, format: :json)
end
