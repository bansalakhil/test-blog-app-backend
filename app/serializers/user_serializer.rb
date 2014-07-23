class UserSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  
  attributes :id, :name, :bio, :url

  def url
    user_url(object, format: :json)
  end
end
