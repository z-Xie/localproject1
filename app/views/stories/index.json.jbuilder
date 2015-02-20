json.array!(@stories) do |story|
  json.extract! story, :id, :title, :description, :point_value, :Stage, :Developer
  json.url story_url(story, format: :json)
end
