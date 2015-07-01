class Player < ActiveRecord::Base
  has_many :matches
  has_and_belongs_to_many :offices
end
