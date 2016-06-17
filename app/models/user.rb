class User < ApplicationRecord
  has_many :goals
  has_many :list_items, through: :goals
  has_secure_password
end
