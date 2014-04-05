require 'spec_helper'

describe "Static pages" do

  subject { page }
  
  describe "Home page" do
	before { visit root_path }
  
    it { have_content('Profit Sync') }
	it { should have_title('Profit Sync') }
	it { should_not have_title(' - Home') }
  end
  
  describe "About page" do
	before { visit about_path }

    it { should have_content('Информация') }
	it { should have_title('Profit Sync - Инфо') }
  end
  
  describe "Contact page" do
	before { visit contact_path }

    it { should have_content('Обратная связь') }
	it { should have_title('Profit Sync - Контакты') }
  end
end