class ResultSerializer < ActiveModel::Serializer
  self.root = true
  belongs_to :race
  attributes :id, :position, :rider_name, :rider_avatar, :rider_team
end
