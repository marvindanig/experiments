require 'spec_helper'

describe "Static pages" do

	let(:base_title) { "Marvin Learns to Ruby on Rails" }

  describe "Home page" do
    before {visit root_path}

    it "should have the content 'Find me'" do
      expect(page).to have_content('Find me')
    end
  
  	it "should have the base title" do
      expect(page).to have_title("#{base_title}")
    end

    it "should have the title 'Home'" do
      expect(page).to have_title("#{base_title} | Home")
    end
  end

  describe "Help page" do
    before {visit help_path}
    it "should have the content '#help'" do
      expect(page).to have_content('#help')
    end

    it "should have the title 'help'" do
      expect(page).to have_title("#{base_title} | Help")
    end
  end

  describe "About page" do
    before {visit about_path}

    it "should have the content 'About Us'" do
      expect(page).to have_content('About Us')
    end

    it "should have the title 'About'" do
      expect(page).to have_title("#{base_title} | About")
    end
  end

  describe "Contact us page" do
    before { visit contact_path }
    it "should have the content 'Contact us'" do
      expect(page).to have_content('Contact us')
    end

    it "should have the title 'Contact us'" do
      expect(page).to have_title("#{base_title} | Contact us")
    end
  end


end