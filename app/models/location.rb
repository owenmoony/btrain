class Location < ActiveRecord::Base
  validates_presence_of :address, :message => "Address can't be blank"
end
