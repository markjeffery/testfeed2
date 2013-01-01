require 'spec_helper'

describe "StaticPages" do

  describe "Contact Page" do
  	it "should have the content 'mark@jeffery.com'" do
  		visit '/static_pages/contact'
  		page.should have_content('mark@jeffery.com')
  	end

  	it "should have the title 'testfeed2 | Contact" do
  		visit '/static_pages/contact'
  		page.should have_selector('title',
  			:text=> "testfeed2 | Contact")
  	end
  end

  describe "Main Page" do
  	it "should have the content 'BladeLogic Test Feed'" do
  		visit '/static_pages/main'
  		page.should have_content('BladeLogic Test Feed')
  	end
  	it "should have the title 'testfeed2 | Main" do
  		visit '/static_pages/main'
  		page.should have_selector('title',
  			:text=> "testfeed2 | Main")
  	end
  end

  describe "About Page" do
  	it "should have the content 'This document will show BladeLogic'" do
  		visit '/static_pages/about'
  		page.should have_content('This document will show BladeLogic')
  	end
  	it "should have the title 'testfeed2 | About" do
  		visit '/static_pages/about'
  		page.should have_selector('title',
  			:text=> "testfeed2 | About")
  	end

  end
end
