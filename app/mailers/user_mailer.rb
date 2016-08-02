class UserMailer < ApplicationMailer
  def share_email(current_user, recipient_user, task)
    @current_user = current_user
    @recipient_user = recipient_user
    @task = task
    @url  = task_url(@task)
    mail(to: @recipient_user.email, subject: 'Someone shared task with you!')
  end
end
