require 'test_helper'

class DeletesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @delete = deletes(:one)
  end

  test "should get index" do
    get deletes_url
    assert_response :success
  end

  test "should get new" do
    get new_delete_url
    assert_response :success
  end

  test "should create delete" do
    assert_difference('Delete.count') do
      post deletes_url, params: { delete: {  } }
    end

    assert_redirected_to delete_url(Delete.last)
  end

  test "should show delete" do
    get delete_url(@delete)
    assert_response :success
  end

  test "should get edit" do
    get edit_delete_url(@delete)
    assert_response :success
  end

  test "should update delete" do
    patch delete_url(@delete), params: { delete: {  } }
    assert_redirected_to delete_url(@delete)
  end

  test "should destroy delete" do
    assert_difference('Delete.count', -1) do
      delete delete_url(@delete)
    end

    assert_redirected_to deletes_url
  end
end
