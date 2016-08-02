class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :tasks_users, dependent: :destroy
  has_many :tasks, through: :tasks_users, dependent: :destroy
  def send_email(user,task)
    UserMailer.share_email(self,user,task).deliver_now
  end
end
