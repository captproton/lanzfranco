class Event < ActiveRecord::Base
  has_many :participations
  has_many :characters, through: :participations
end
