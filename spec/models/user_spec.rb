require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { FactoryGirl.create(:user) }

  subject { user }

  it { should respond_to(:email) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }

  it { should validate_presence_of(:email) }

  it { should be_valid }

  context "email?" do
    before { user.email = "" }
    it { should_not be_valid }
  end
end
