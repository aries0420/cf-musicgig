class Gig < ActiveRecord::Base
  belongs_to :user
  image_accessor :cover_image
  validates :title, :description, :date, presence: true
  validates :title, :description, length: { minimum: 5}
  validates :title, uniqueness: true
end
