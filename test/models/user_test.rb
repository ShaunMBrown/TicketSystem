require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  def setup
  # @user = User.new(name: "Test User", email: "testuser@test.edu")
    @user = User.new(email: "testuser@test.edu")
  end

  test "should be valid" do
    assert @user.valid?
  end

  # test "name should be present" do
  #   @user.name = "     "
  #   assert_not @user.valid?
  # end
  
  test "email should be present" do
    @user.email = "     "
    assert_not @user.valid?
  end
  
  # # name can't be more than 50 characters
  # test "name should not be too long" do
  #   @user.name = "a" * 51  # using string multiplication
  #   assert_not @user.valid?
  # end
  
  # due to string limitations, the email can't be over 255 characters
  test "email should not be too long" do
    @user.email = "a" * 256
    assert_not @user.valid?
  end
  
  test "email validation should accept valid addresses" do
    valid_addresses = %w[foo@bar.com THISGUY@TEST.COM A_US-ER@foo.bar.org
                         first.last@foo.jp jane+sam@faz.cn]
    valid_addresses.each do |valid_address|
      @user.email = valid_address
      assert @user.valid?, "#{valid_address.inspect} should be valid"
    end
  end
  
  test "email addresses should be unique" do
    duplicate_user = @user.dup
    duplicate_user.email = @user.email.upcase   # case insensitivity
    @user.save
    assert_not duplicate_user.valid?
  end
  
end
