# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class TasksChannel < ApplicationCable::Channel
  def self.broadcast(task,users)
    broadcast_to tasks, task: task, users: users
  end

  def subscribed
    puts 'SUBSCRIBED'
    stream_for 'tasks'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
