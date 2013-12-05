json.array!(@posts) do |post|
  json.extract! post, :title, :author, :body, :published_at, :comment
  json.url post_url(post, format: :json)
end
