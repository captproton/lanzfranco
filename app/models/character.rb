class Character < ActiveRecord::Base
  has_many :participations
  has_many :events, through: :participations
end
