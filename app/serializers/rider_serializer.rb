class RiderSerializer < ActiveModel::Serializer
  self.root = true
  belongs_to :race
  attributes :id, :name, :avatar, :team
end
