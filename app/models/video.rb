class Video < ApplicationRecord
  belongs_to :event, :optional => true
end
