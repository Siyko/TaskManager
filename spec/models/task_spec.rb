require 'rails_helper'

RSpec.describe Task, type: :model do
  before(:each) do
    @task = Task.new
  end
  it 'should not be valid' do
    @task.should_not be_valid
  end
end
