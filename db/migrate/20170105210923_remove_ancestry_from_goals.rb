class RemoveAncestryFromGoals < ActiveRecord::Migration[5.0]
  def change
    remove_column :goals, :ancestry, :string
  end
end
