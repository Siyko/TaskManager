class CreateTasksUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks_users do |t|
      t.belongs_to :user
      t.belongs_to :task
      t.timestamps
    end
  end
end
