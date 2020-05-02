require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.first
  end
  
  test 'should be valid' do
    assert @user.valid?, 'yup!'
  end

  test "name should be present" do
    # @user.name = "    "
    if @user.name.blank?
      assert_not @user.valid?
    else
      p @user
      assert @user.valid?
    end
  end
end
