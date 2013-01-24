class Slideshow < ActiveRecord::Base
  attr_accessible :name
  has_many :slides, :order => :position
end
