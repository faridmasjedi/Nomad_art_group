class Artist < ApplicationRecord
  has_many :roles
  has_many :events, :through => :roles
end
