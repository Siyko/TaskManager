class AddLastSharedToTask < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :last_shared, :integer
  end
end
