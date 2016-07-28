class AddFieldsToTask < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :name, :string
    add_column :tasks, :description, :text
    add_column :tasks, :status, :string
  end
end
