class Screening < ActiveRecord::Base
  has_many :shows
  belongs_to :cinema
  belongs_to :film
end
