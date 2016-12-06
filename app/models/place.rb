class Place < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  belongs_to :photo
  
  geocoded_by :address
  after_validation :geocode

  validates :name, length: {minimum: 3}, presence: true
  validates :address, presence: true
  validates :description, presence: true
end
