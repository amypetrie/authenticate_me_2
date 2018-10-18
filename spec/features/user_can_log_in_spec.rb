require 'rails_helper'

describe 'When a valid user visits the login page' do
  it "Valid user can submit login credentials" do
    @user_1 = User.create(name: "Amy", email: "amy@gmail.com", password: "wow")
    @user_2 = User.create(name: "Bruce", email: "bruce@gmail.com", password: "cool")
    @user_3 = User.create(name: "Linda", email: "linda@gmail.com", password: "yes")
    visit login_path


  end
end
