class Chapter < ActiveRecord::Base
  belongs_to :book
  has_many :events
end
