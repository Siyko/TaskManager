require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    Task.create(name:'test')
    user = FactoryGirl.create(:user)
  end
  it 'should send email' do
    subject { create :user }
    expect { subject.send_email(User.last,Task.last) }
      .to change { ActionMailer::Base.deliveries.count }.by(1)
  end
end
