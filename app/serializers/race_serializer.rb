class RaceSerializer < ActiveModel::Serializer
  self.root = true
  attributes :id, :name, :icon, :image, :start_at, :end_at, :url
  has_many :results
  has_many :riders
end
