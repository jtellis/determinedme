class AddDescriptionAndCompletedAtToGoal < ActiveRecord::Migration[5.0]
  def change
    add_column :goals, :description, :text
    add_column :goals, :completed_at, :datetime
  end
end
