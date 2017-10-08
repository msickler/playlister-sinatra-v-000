class Genre < ActiveRecord::Base
  extend Concerns::Slugifiable::ClassMethods
  include Concerns::Slugifiable::InstanceMethods

  has_many :songs
  has_many :artists, through: :songs
end
