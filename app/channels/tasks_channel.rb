# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class TasksChannel < ApplicationCable::Channel
  def self.broadcast(task)
    broadcast_to 'tasks', task: task
  end

  def subscribed
    puts 'SUBSCRIBED'
    stream_for 'tasks'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
