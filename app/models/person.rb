class Person < ActiveRecord::Base
  attr_accessible :name, :type, :email, :camera, :address
  composed_of :address, :class_name => "Address",
              :mapping => [%w(street_address street_address),
                           %w(city city),
                           %w(state state),
                           %w(zip zip)]
end
