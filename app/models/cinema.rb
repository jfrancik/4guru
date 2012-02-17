class Cinema < ActiveRecord::Base
  has_many :shows
  has_many :films, :through => :shows
end
