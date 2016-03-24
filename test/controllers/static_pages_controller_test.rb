require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Home | This is a Skeleton"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help | This is a Skeleton"
  end

  test "should get about" do
  	get :about
  	assert_response :success
  	assert_select "title", "About | This is a Skeleton"
  end

  test "should get contact" do
    get :contact
    assert_response :success
    assert_select "title", "Contact | This is a Skeleton"
  end

end
