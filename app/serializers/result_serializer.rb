class ResultSerializer < ActiveModel::Serializer
  attributes :id, :position, :rider_name, :rider_avatar, :rider_team
end
