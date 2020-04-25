require 'test_helper'

class MenuTest < ActiveSupport::TestCase
  def setup
    @user = users(:michael)
    @menu = @user.menus.build(menu_name: "niku",
                    category: "main",
                    date: "2020/4/24",
                    time_zone: "dinner")
  end

  test "should be valid" do
    assert @menu.valid?
  end

  test "user id should be present" do
    @menu.user_id = nil
    assert_not @menu.valid?
  end

  test "menu name should be present" do
    @menu.menu_name = " "
    assert_not @menu.valid?
  end

  test "menu name should be at most 20 characters" do
    @menu.menu_name = "a" * 21
    assert_not @menu.valid?
  end

  test "category should be present" do
    @menu.category = " "
    assert_not @menu.valid?
  end

  test "date should be present" do
    @menu.date = " "
    assert_not @menu.valid?
  end

  test "time zone should be present" do
    @menu.time_zone = " "
    assert_not @menu.valid?
  end

  test "memo should be at most 50 characters" do
    @menu.memo = "a" * 51
    assert_not @menu.valid?
  end
end
