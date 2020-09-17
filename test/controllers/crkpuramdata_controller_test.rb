require 'test_helper'

class CrkpuramdataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crkpuramdatum = crkpuramdata(:one)
  end

  test "should get index" do
    get crkpuramdata_url
    assert_response :success
  end

  test "should get new" do
    get new_crkpuramdatum_url
    assert_response :success
  end

  test "should create crkpuramdatum" do
    assert_difference('Crkpuramdatum.count') do
      post crkpuramdata_url, params: { crkpuramdatum: { account_number: @crkpuramdatum.account_number, adhar: @crkpuramdatum.adhar, bank_name: @crkpuramdatum.bank_name, care_of: @crkpuramdatum.care_of, full_name: @crkpuramdatum.full_name, ifsccode: @crkpuramdatum.ifsccode, mobile: @crkpuramdatum.mobile } }
    end

    assert_redirected_to crkpuramdatum_url(Crkpuramdatum.last)
  end

  test "should show crkpuramdatum" do
    get crkpuramdatum_url(@crkpuramdatum)
    assert_response :success
  end

  test "should get edit" do
    get edit_crkpuramdatum_url(@crkpuramdatum)
    assert_response :success
  end

  test "should update crkpuramdatum" do
    patch crkpuramdatum_url(@crkpuramdatum), params: { crkpuramdatum: { account_number: @crkpuramdatum.account_number, adhar: @crkpuramdatum.adhar, bank_name: @crkpuramdatum.bank_name, care_of: @crkpuramdatum.care_of, full_name: @crkpuramdatum.full_name, ifsccode: @crkpuramdatum.ifsccode, mobile: @crkpuramdatum.mobile } }
    assert_redirected_to crkpuramdatum_url(@crkpuramdatum)
  end

  test "should destroy crkpuramdatum" do
    assert_difference('Crkpuramdatum.count', -1) do
      delete crkpuramdatum_url(@crkpuramdatum)
    end

    assert_redirected_to crkpuramdata_url
  end
end
