require 'rails_helper'

RSpec.describe User, type: :model do

  user = User.new(first_name: 'The', 
                  last_name: 'Pope', 
                  email: 'the_pope@church.com', 
                  password: 'goodday', 
                  password_confirmation: 'goodday')

  describe '.authenticate_with_credentials' do
    it 'is expected to authenticate properly given user email and password' do
      user.save!
      expect(User.authenticate_with_credentials(user.email, user.password)).to match(user)  
    end
    it 'is expected to be nil given incorrect password' do
      expect(User.authenticate_with_credentials(user.email, 'some_password')).to match(nil)  
    end
    it 'is expected to be nil given incorrect email' do
      expect(User.authenticate_with_credentials('random@email.com', user.password)).to match(nil)  
    end
  end

  describe 'Validations' do
    it 'is valid with names, email, and password' do
      expect(user).to be_valid
    end
    it 'is invalid if password and password_confirmation do not match' do
      user.password = 'hello'
      expect(user).to_not match(user.password_confirmation)
    end
    it 'cannot have the same email twice' do
      user2 = User.new(first_name: 'The', 
                      last_name: 'Pope', 
                      email: 'THE_POPE@church.com', 
                      password: 'hi', 
                      password_confirmation: 'hi')
      expect(user2.email).to_not match(user.email)
    end
    it 'is invalid without a first_name' do
      user.first_name = nil
      expect(user).to_not be_valid
    end
    it 'is invalid without a last_name' do
      user.last_name = nil
      expect(user).to_not be_valid
    end
    it 'is invalid without a email' do
      user.email = nil
      expect(user).to_not be_valid
    end
    it 'is invalid without a password' do
      user.password = nil
      expect(user).to_not be_valid
    end
    it 'is invalid without a password confirmation' do
      user.password_confirmation = nil
      expect(user).to_not be_valid
    end
  end

  describe 'Password' do
    it 'is expected to be of minimum length 5 characters' do
      user.password = '1234'
      user.password_confirmation = '1234'
      expect(user).to_not be_valid
    end
  end
end
