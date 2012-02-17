class Film < ActiveRecord::Base
  has_many :shows
  has_many :cinemas, :through => :shows
end
