require 'rails_helper'

RSpec.describe User, type: :model do

  user = User.new(first_name: 'The', 
                  last_name: 'Pope', 
                  email: 'the_pope@church.com', 
                  password: 'hi', 
                  password_confirmation: 'hi')

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


end


#email must be unique, not present in the db
