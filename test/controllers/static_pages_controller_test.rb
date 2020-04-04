require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get root" do
    get root_url
    assert_response :success
    assert_select "title", "Home|Task Management App"
  end

  # test "should get help" do
  #   get static_pages_help_url
  #   assert_response :success
  #   assert_select "title", "Help|Task Management App"
  # end
  #
  # test "should get about" do
  #   get static_pages_about_url
  #   assert_response :success
  #   assert_select "title", "About|Task Management App"
  # end

end
