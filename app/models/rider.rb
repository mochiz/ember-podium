class Rider < ActiveRecord::Base
  has_many :results
  has_many :races, through: :results
end
