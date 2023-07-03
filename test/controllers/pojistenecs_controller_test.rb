require "test_helper"

class PojistenecsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pojistenec = pojistenecs(:one)
  end

  test "should get index" do
    get pojistenecs_url
    assert_response :success
  end

  test "should get new" do
    get new_pojistenec_url
    assert_response :success
  end

  test "should create pojistenec" do
    assert_difference("Pojistenec.count") do
      post pojistenecs_url, params: { pojistenec: { datum_narozeni: @pojistenec.datum_narozeni, email: @pojistenec.email, jmeno: @pojistenec.jmeno, mesto: @pojistenec.mesto, prijmeni: @pojistenec.prijmeni, telefon: @pojistenec.telefon, ulice: @pojistenec.ulice } }
    end

    assert_redirected_to pojistenec_url(Pojistenec.last)
  end

  test "should show pojistenec" do
    get pojistenec_url(@pojistenec)
    assert_response :success
  end

  test "should get edit" do
    get edit_pojistenec_url(@pojistenec)
    assert_response :success
  end

  test "should update pojistenec" do
    patch pojistenec_url(@pojistenec), params: { pojistenec: { datum_narozeni: @pojistenec.datum_narozeni, email: @pojistenec.email, jmeno: @pojistenec.jmeno, mesto: @pojistenec.mesto, prijmeni: @pojistenec.prijmeni, telefon: @pojistenec.telefon, ulice: @pojistenec.ulice } }
    assert_redirected_to pojistenec_url(@pojistenec)
  end

  test "should destroy pojistenec" do
    assert_difference("Pojistenec.count", -1) do
      delete pojistenec_url(@pojistenec)
    end

    assert_redirected_to pojistenecs_url
  end
end
