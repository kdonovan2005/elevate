class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :password_digest, :email, :avatar
  has_many :goals
end
