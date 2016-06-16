class GoalSerializer < ActiveModel::Serializer
  attributes :id, :name, :start_date, :end_date, :active
  belongs_to :user
  has_many :list_items
end
