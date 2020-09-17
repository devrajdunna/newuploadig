require 'test_helper'

class CrkpdataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crkpdatum = crkpdata(:one)
  end

  test "should get index" do
    get crkpdata_url
    assert_response :success
  end

  test "should get new" do
    get new_crkpdatum_url
    assert_response :success
  end

  test "should create crkpdatum" do
    assert_difference('Crkpdatum.count') do
      post crkpdata_url, params: { crkpdatum: { adhar: @crkpdatum.adhar, mobile: @crkpdatum.mobile, name: @crkpdatum.name } }
    end

    assert_redirected_to crkpdatum_url(Crkpdatum.last)
  end

  test "should show crkpdatum" do
    get crkpdatum_url(@crkpdatum)
    assert_response :success
  end

  test "should get edit" do
    get edit_crkpdatum_url(@crkpdatum)
    assert_response :success
  end

  test "should update crkpdatum" do
    patch crkpdatum_url(@crkpdatum), params: { crkpdatum: { adhar: @crkpdatum.adhar, mobile: @crkpdatum.mobile, name: @crkpdatum.name } }
    assert_redirected_to crkpdatum_url(@crkpdatum)
  end

  test "should destroy crkpdatum" do
    assert_difference('Crkpdatum.count', -1) do
      delete crkpdatum_url(@crkpdatum)
    end

    assert_redirected_to crkpdata_url
  end
end
