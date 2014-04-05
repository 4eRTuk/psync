require 'spec_helper'

describe "Authentication" do

  subject { page }

  describe "signin page" do
    before { visit signin_path }

	describe "with invalid information" do
      before { click_button "Войти" }

      it { should have_content('Авторизация') }
      it { should have_title('Авторизация') }
      it { should have_selector('div.alert.alert-error') }
    end
  end
end