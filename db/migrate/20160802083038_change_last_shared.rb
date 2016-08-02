class ChangeLastShared < ActiveRecord::Migration[5.0]
  def change
    change_column :tasks, :last_shared, :string
  end
end
