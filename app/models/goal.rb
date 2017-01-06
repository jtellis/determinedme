class Goal < ApplicationRecord
  acts_as_tree
  belongs_to :user
  has_many :notes
end
