class ModifyFieldTimeForEvents < ActiveRecord::Migration[7.1]
  def change
    remove_column :events, :hour, :time
    add_column :events, :hour, :integer
    add_column :events, :minute, :integer
  end
end
