class Race < ActiveRecord::Base
  has_many :results
  has_many :riders, through: :results
end
