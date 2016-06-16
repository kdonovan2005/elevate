class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :avatar, :password_digest
  has_many :goals
  has_many :list_items, through: :goals

end
