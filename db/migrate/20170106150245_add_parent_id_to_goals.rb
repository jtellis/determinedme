class AddParentIdToGoals < ActiveRecord::Migration[5.0]
  def change
    add_column :goals, :parent_id, :integer
  end
end
