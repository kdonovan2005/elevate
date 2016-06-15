class ListItemsSerializer < ActiveModel::Serializer
  attributes :id, :description, :frequency, :completed
  belongs_to :goal
end
