class Album < ActiveRecord::Base
  validates_presence_of :artist, :label, :released_on, :genre_id
  validates :name, presence: true, length: {maximum: 150 }
  validates_length_of :description, maximum: 2000

  delegate :name, to: :genre, allow_nil: true, prefix: true

  belongs_to :genre
  belongs_to :user

  attr_accessible :name, :artist, :label, :released_on, :description, :cover_image, :remote_cover_image_url, :genre_id
  mount_uploader :cover_image, CoverImageUploader

end
