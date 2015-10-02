require 'spec_helper'

describe "Static pages" do

	describe "home page" do

		it "should have the content 'Sample App' " do 
					
			visit '/static_pages/home'
			page.should have_selector('h1', :text => 'Sample App')
		end
			
		it "should have the base title" do 
			visit '/static_pages/home'
			page.should have_selector('title',  
					:text => 'ROR Sample App')
		end

		it "should not have ONLY the page title" do 
			visit '/static_pages/home'
			page.should_not have_selector('title',  
					:text => '| Home')
		end
			
		end


describe "Help page" do

		it "should have the content 'Help' " do 
					
			visit '/static_pages/help'
			page.should have_selector('h1', :text => 'Help')
		end

		it "should have the right title" do 
			visit '/static_pages/help'
			page.should have_selector('title',  
					:text => 'ROR Sample App | Help')
		end
		
		end

describe "About page" do

		it "should have the content 'About' " do 
					
			visit '/static_pages/about'
			page.should have_selector('h1', :text => 'About')
		end

		it "should have the right title" do 
			visit '/static_pages/about'
			page.should have_selector('title',  
					:text => 'ROR Sample App | About')
		end
	
			
		end

describe "Contact page" do

		it "should have the content 'Contact' " do 
					
			visit '/static_pages/contact'
			page.should have_selector('h1', :text => 'Contact')
		end

		it "should have the right title" do 
			visit '/static_pages/contact'
			page.should have_selector('title',  
					:text => 'ROR Sample App | Contact')
		end
	
			
		end

	end
