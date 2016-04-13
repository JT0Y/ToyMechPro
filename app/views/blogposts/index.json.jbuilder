json.array!(@blogposts) do |blogpost|
  json.extract! blogpost, :id, :title, :body, :category
  json.url blogpost_url(blogpost, format: :json)
end
