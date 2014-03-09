require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'StaticPages'" do
      visit '/static_pages/home'
      expect(page).to have_content('StaticPages')
    end

    it "should have the title 'home'" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | home")
    end
  end

  describe "Help page" do

    it "should have the content '#help'" do
      visit '/static_pages/help'
      expect(page).to have_content('#help')
    end

    it "should have the title 'help'" do
      visit '/static_pages/help'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | help")
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | About")
    end
  end
end