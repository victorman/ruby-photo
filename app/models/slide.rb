class Slide < ActiveRecord::Base
  attr_accessible :photo_id, :position, :slideshow_id
  belongs_to :slideshow
  belongs_to :photo
end
