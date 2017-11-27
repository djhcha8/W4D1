class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  
  has_many :viewer,
  foreign_key: :viewer_id,
  class_name: :ArtworkShare
  
  has_many :shared_artworks,
  through: :viewer,
  source: :artwork
  
end
