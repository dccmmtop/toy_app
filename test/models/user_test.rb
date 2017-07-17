require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = User.new(name: 'dccmmtop', email: 'dccmmtop@gmail.com', password: 'mmmmmm')
  end
  test 'shoule be valid' do
    assert @user.valid?
  end
  test 'name should be present' do
    @user.name = '    '
    assert_not @user.valid?
  end

  test 'email should be present' do
    @user.email = '    '
    assert_not @user.valid?
  end
  test 'name should not too long' do
    @user.name = 'we' * 51
    assert_not @user.valid?
  end
  test 'email should not too long' do
    @user.email = 'sccasd' * 555 << '@qq.com'
    assert_not @user.valid?
  end
  test 'format of email shoule be right' do
    @user.email = '123123qq.com'
    assert_not @user.valid?
  end
  test 'email should be unique' do
    dup_user = @user.dup
    @user.save
    assert_not dup_user.valid?
  end
  test 'password should be present (nonblank)' do
    @user.password = @user.password_confirmation = ' ' * 6
    assert_not @user.valid?
  end
  test 'password should be present(nobalank)' do
    @user.password = @user.password_confirmation = 'a' * 5
    assert_not @user.valid?
  end
end
