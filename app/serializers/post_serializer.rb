class PostSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :id, :title, :excerpt, :content, :url, :updated_at
  
  has_one :user, embed: :ids, include: true
  # has_many :posts, embed: :ids, include: true

  def url
    post_url(object, format: :json)
  end

end
