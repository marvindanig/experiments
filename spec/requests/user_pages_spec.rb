require 'spec_helper'

describe "UserPages" do
  let(:base_title) { "Marvin Learns to Ruby on Rails" }
  subject { page }

  describe "sign-up page" do
    before {visit new_user_path}

    it { should have_content('New user') }
    it { should have_title("#{base_title} | New user") }

    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get new_user_path
      response.status.should be(200)
    end
  end
end
