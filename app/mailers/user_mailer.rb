class UserMailer < ApplicationMailer
  def share_email(current_user, recipient_user, task)
    puts current_user
    @current_user = current_user
    @recipient_user = recipient_user
    @task = task
    @url  = task_url(@task)
    puts @current_user.email
    puts @recipient_user.email
    puts @task.name
    puts @url
    mail(to: @recipient_user.email, subject: 'Someone shared task with you!')
  end
end
