class Event < ApplicationRecord
  has_many :roles
  has_and_belongs_to_many :users
  belongs_to :genre, :optional => true
  has_many :artists, :through => :roles
end
