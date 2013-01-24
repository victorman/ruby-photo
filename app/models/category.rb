class Category < ActiveRecord::Base
  attr_accessible :name, :parent_id
  has_and_belongs_to_many :photos
  acts_as_tree

  def ancestors_name
    if not(parent.nil?)
      parent.ancestors_name + parent.name + ':'
    else
      ""
    end
  end

  def long_name
    if not(ancestors_name.nil?)
      ancestors_name + name
    else
      name
    end
  end
end
