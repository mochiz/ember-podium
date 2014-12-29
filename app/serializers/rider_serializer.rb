class RiderSerializer < ActiveModel::Serializer
  attributes :id, :name, :avatar, :team, :twitter
end
