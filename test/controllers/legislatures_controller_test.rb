require 'test_helper'

class LegislaturesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get legislatures_index_url
    assert_response :success
  end

  test "should get show" do
    get legislatures_show_url
    assert_response :success
  end

  test "should get edit" do
    get legislatures_edit_url
    assert_response :success
  end

  test "should get new" do
    get legislatures_new_url
    assert_response :success
  end

end
