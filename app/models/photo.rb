class Photo < ApplicationRecord
  belongs_to :event, :optional => true
end
