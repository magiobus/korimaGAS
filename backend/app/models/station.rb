class Station < ActiveRecord::Base
  validates_presence_of :name, :street
end
