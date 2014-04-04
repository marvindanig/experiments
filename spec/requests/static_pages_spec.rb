require 'spec_helper'

describe "Static pages" do

	let(:base_title) { "Marvin Learns to Ruby on Rails" }

  describe "Home page" do

    it "should have the content 'Find me'" do
      visit '/static_pages/home'
      expect(page).to have_content('Find me')
    end
	it "should have the base title" do
      visit '/static_pages/home'
      expect(page).to have_title("#{base_title}")
    end
    it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("#{base_title} | Home")
    end
  end

  describe "Help page" do

    it "should have the content '#help'" do
      visit '/static_pages/help'
      expect(page).to have_content('#help')
    end

    it "should have the title 'help'" do
      visit '/static_pages/help'
      expect(page).to have_title("#{base_title} | Help")
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have the title 'About'" do
      visit '/static_pages/about'
      expect(page).to have_title("#{base_title} | About")
    end
  end
end