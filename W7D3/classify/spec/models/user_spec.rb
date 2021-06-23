require 'rails_helper'

RSpec.describe User, type: :model do

  subject(:user) {User.new(email: "AATester@appacademy.io", password: "hunter12")}
  
  it {should validate_presence_of(:email)}
  it {should validate_presence_of(:password_digest)}
  it {should validate_length_of(:password).is_at_least(6)}

  describe "#is_password?"
    it "checks if the password given matches the digest in the database" do
      expect(user.is_password?("hunter12")).to be true
    end

    it "checks if the password given does not match the digest in the databse" do
      expect(user.is_password?("notpassword")).to be false
    end

  describe "reset_session_token!"
    it "assigns the user a new session token"
      last_session_token = user.session_token
      user.reset_session_token!
      expect(last_session_token).to_not eq(user.session_token)
    end

end
