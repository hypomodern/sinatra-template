# example model file
class Profile
  include MongoMapper::Document

  key :name, String
  timestamps!

  validates_presence_of :name
end
