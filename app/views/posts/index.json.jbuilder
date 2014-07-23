json.array!(@posts) do |post|
  json.extract! post, :id, :title, :excerpt, :content, :user_id
  json.url post_url(post, format: :json)
end
