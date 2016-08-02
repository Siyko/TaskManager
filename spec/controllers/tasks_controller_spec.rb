require 'rails_helper'

RSpec.describe TasksController, type: :controller do
  login_user
  create_task
  it "should render success json" do
    @expected = {
            :status  => 'ok',
            :message => 'success'
    }.to_json
    get :share, user_id: User.last.id, id: Task.last # replace with action name / params as necessary
    response.body.should == @expected
  end
  it "should render fail json" do
    @expected = {
            :status  => 'error',
            :message => 'this user already has access to this task'
    }.to_json
    get :share, user_id: User.first.id, id: Task.last # replace with action name / params as necessary
    response.body.should == @expected
  end

end
