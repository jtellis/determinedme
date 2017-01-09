class Goal < ApplicationRecord
  extend ActsAsTree::TreeWalker

  validates_presence_of :user, :title
  validates_presence_of :parent_id, allow_nil: true
  acts_as_tree
  belongs_to :user
  has_many :notes, dependent: :destroy
end
