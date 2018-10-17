require 'rails_helper'

  describe 'When a valid user visits the login page' do
    it "Valid user can submit login credentials" do
      visit login_path
      save_and_open_page
    end

    end
