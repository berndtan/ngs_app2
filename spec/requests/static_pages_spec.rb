require 'spec_helper'

describe "Static pages" do

	before (:all) do
        ActiveRecord::Base.establish_connection(
          	:adapter => "mysql2",
  			:host => "localhost",
  			:database => "ngs_app2_development",
  			:username => "annerose",
  			:password => "an2709be" )
    end

	describe "Home page" do

		it "should have the h1 'NGS App 2'" do
			visit '/static_pages/home'
			page.should have_selector('h1', :text => 'NGS App 2')
		end

		it "should have the base title" do
			visit '/static_pages/home'
			page.should have_selector('title', 
						:text => "Next gen sequencing App 2")
		end

		it "should not have a custom page title" do
			visit '/static_pages/home'
			page.should_not have_selector('title', :text => '| Home')
		end
	end	

	describe "Help page" do

		it "should have the h1 'Help'" do
			visit '/static_pages/help'
			page.should have_selector('h1', :text => 'Help')
		end

		it "should have the right title" do
			visit '/static_pages/help'
			page.should have_selector('title', 
						:text => "Next gen sequencing App 2 | Help")
		end
	end	

	describe "About page" do

		it "should have the h1 'About Us'" do
			visit '/static_pages/about'
			page.should have_selector('h1', :text => 'About Us')
		end

		it "should have the right title" do
			visit '/static_pages/about'
			page.should have_selector('title', 
						:text => "Next gen sequencing App 2 | About Us")
		end
	end	

	describe "Contact page" do

		it "should have the h1 'Contact'" do
			visit '/static_pages/contact'
			page.should have_selector('h1', :text => 'Contact')
		end

		it "should have the right title" do
			visit '/static_pages/contact'
			page.should have_selector('title', 
						:text => "Next gen sequencing App 2 | Contact")
		end
	end	
end
