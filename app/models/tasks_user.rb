class TasksUser < ApplicationRecord
  belongs_to :user
  belongs_to :task
  after_commit :broadcast

  private
  def broadcast
    puts 'broadcasted'
    if self.task_id.present?
      TasksChannel.broadcast_to User.find(self.user_id), task: Task.find(self.task_id)
    end
  end
end
