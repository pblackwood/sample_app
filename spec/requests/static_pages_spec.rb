require 'spec_helper'

describe "StaticPages" do

  describe "Home Page" do
    it "Should have an h1 for 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end

    it "Should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "Home")
    end
  end

  describe "Help Page" do
    it "Should have an H1 for 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => "Help")
    end

    it "Should have the right title" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => "Help")
    end
  end

  describe "About Us Page" do
    it "Should have an H1 for 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end

    it "Should have the right title" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "About Us")
    end
  end

  describe "Contact Us Page" do
    it "Should have an H1 for 'Contact Us'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact Us')
    end

    it "Should have the title 'Contact Us'" do
      visit '/static_pages/contact'
      page.should have_selector('title', :text => "Contact Us")
    end
  end
end
