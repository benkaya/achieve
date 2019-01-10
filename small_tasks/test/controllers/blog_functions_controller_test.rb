require 'test_helper'

class BlogFunctionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get blog_functions_index_url
    assert_response :success
  end

  test "should get show" do
    get blog_functions_show_url
    assert_response :success
  end

  test "should get edit" do
    get blog_functions_edit_url
    assert_response :success
  end

  test "should get update" do
    get blog_functions_update_url
    assert_response :success
  end

  test "should get destroy" do
    get blog_functions_destroy_url
    assert_response :success
  end

end
