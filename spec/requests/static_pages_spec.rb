require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Profit Sync'" do
      visit '/static_pages/home'
      expect(page).to have_content('Profit Sync')
    end
	
	it "should have the title 'Profit Sync'" do
      visit '/static_pages/home'
      expect(page).to have_title('Profit Sync')
    end
	
	it "should not have the title ' - Home'" do
      visit '/static_pages/home'
      expect(page).not_to have_title(' - Home')
    end
  end
  
  describe "About page" do

    it "should have the content 'About Profit Sync'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Profit Sync')
    end
	
	it "should have the title 'Profit Sync - About'" do
      visit '/static_pages/about'
      expect(page).to have_title('Profit Sync - About')
    end
  end
end