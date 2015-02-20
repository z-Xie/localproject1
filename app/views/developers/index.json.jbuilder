json.array!(@developers) do |developer|
  json.extract! developer, :id, :name, :email, :password, :Project_id
  json.url developer_url(developer, format: :json)
end
