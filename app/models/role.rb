class Role < ApplicationRecord
  belongs_to :events, :optional => true
  belongs_to :artists, :optional => true
end
