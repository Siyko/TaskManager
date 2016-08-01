# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class TasksChannel < ApplicationCable::Channel
  def self.broadcast(task,users)
    broadcast_to current_user, task: task, users: users
  end

  def subscribed
    puts 'SUBSCRIBED'
    tasks = Task.all
    stream_for current_user
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
