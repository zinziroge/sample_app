require 'spec_helper'

describe "Static pages" do

  let(:base_title) {"Ruby on Rails Tutorial Sample App"}

  subject { page }

  describe "Home page" do
    before { visit root_path } 

    it "shoud have the content 'Sample App'" do
      should have_selector('h1', :text => 'Sample App')
    end

	it "should have the base title" do
      should have_selector('title',
      :text => full_title(''))
    end

    it "should not have a custom page title" do
      should_not have_selector('title',
        :text => "| Home")
    end
  end
  
  describe "Help page" do
	it "should have the content 'Help'" do
		visit help_path
		should have_selector('h1', :text => 'Help')
    end

    it "should have the right title" do
      visit help_path
      should have_selector('title', :text => full_title('Help'))
    end
  end

  describe "About page" do
	it "should have the content 'About Us'" do
		visit about_path
		should have_selector('h1', :text => 'About Us')
    end

    it "should have the right title" do
      visit about_path
      should have_selector('title', :text => full_title('About Us'))
    end
  end

  describe "Contact page" do
	it "should have the content 'Contact Us'" do
		visit contact_path
		should have_selector('h1', :text => 'Contact')
    end

    it "should have the right title" do
      visit contact_path
      should have_selector('title', :text => full_title('Contact'))
    end
  end
end
