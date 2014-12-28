class Result < ActiveRecord::Base
  belongs_to :race
  belongs_to :rider

  default_scope -> { order(:position) }

  delegate :name, :avatar, :team, to: :rider, prefix: true
end
