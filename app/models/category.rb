class Category < ActiveRecord::Base
  attr_accessible :name, :parent_id
  has_and_belongs_to_many :photos
end
