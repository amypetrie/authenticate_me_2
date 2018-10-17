require 'rails_helper'

describe User, type: :model do
  before(:each) do
    @user_1 = User.create(name: "Amy", email: "amy@gmail.com", password: "wow")
    @user_2 = User.create(name: "Bruce", email: "bruce@gmail.com", password: "cool")
    @user_3 = User.create(name: "Linda", email: "linda@gmail.com", password: "yes")
  end

  describe 'Validations' do
    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:email)}
    it {should validate_presence_of(:password)}
  end

  describe 'Class Methods' do
    describe 'Authenticate' do

      it 'Should return the User if email and password correspond to a valid user' do
        user = User.authenticate("amy@gmail.com", "wow")

        expect(user).to eq(@user_1)
      end

      it 'Should return nil if password is not valid for existing user' do
        user = User.authenticate("amy@gmail.com", "sup")

        expect(user).to eq(nil)
      end

      it 'Should return nil if email is not valid for existing user' do
        user = User.authenticate("ay@gmail.com", "sup")

        expect(user).to eq(nil)
      end

      it 'Should return nil if email is not valid for existing user' do
        user = User.authenticate("ay@gmail.com", "sup")

        expect(user).to eq(nil)
      end

    end
  end

end
