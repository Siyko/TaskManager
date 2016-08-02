module ControllerMacros
  FactoryGirl.define do
    factory :user do
      email { Faker::Internet.email }
      password "password"
      password_confirmation "password"
    end
  end
  def login_user
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      user = FactoryGirl.create(:user)
      user2 = FactoryGirl.create(:user)
      #user.confirm! # or set a confirmed_at inside the factory. Only necessary if you are using the "confirmable" module
      sign_in user
      sign_in user2
    end
    def create_task
      before(:each) do
        task = Task.create(name:'1')
        task.users << User.first
      end
    end
  end
end
