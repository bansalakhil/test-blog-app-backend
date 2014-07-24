class UserSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :id, :name, :bio, :url
  
  has_many :posts, embed: :ids, include: true

  def url
    user_url(object, format: :json)
  end
end
