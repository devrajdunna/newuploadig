require 'test_helper'

class CrkpuramsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crkpuram = crkpurams(:one)
  end

  test "should get index" do
    get crkpurams_url
    assert_response :success
  end

  test "should get new" do
    get new_crkpuram_url
    assert_response :success
  end

  test "should create crkpuram" do
    assert_difference('Crkpuram.count') do
      post crkpurams_url, params: { crkpuram: {  } }
    end

    assert_redirected_to crkpuram_url(Crkpuram.last)
  end

  test "should show crkpuram" do
    get crkpuram_url(@crkpuram)
    assert_response :success
  end

  test "should get edit" do
    get edit_crkpuram_url(@crkpuram)
    assert_response :success
  end

  test "should update crkpuram" do
    patch crkpuram_url(@crkpuram), params: { crkpuram: {  } }
    assert_redirected_to crkpuram_url(@crkpuram)
  end

  test "should destroy crkpuram" do
    assert_difference('Crkpuram.count', -1) do
      delete crkpuram_url(@crkpuram)
    end

    assert_redirected_to crkpurams_url
  end
end
