class Note < ApplicationRecord
  validates_presence_of :body
  belongs_to :goal
end
