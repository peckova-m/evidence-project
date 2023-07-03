require "test_helper"

class PojistenisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pojisteni = pojistenis(:one)
  end

  test "should get index" do
    get pojistenis_url
    assert_response :success
  end

  test "should get new" do
    get new_pojisteni_url
    assert_response :success
  end

  test "should create pojisteni" do
    assert_difference("Pojisteni.count") do
      post pojistenis_url, params: { pojisteni: { nazev: @pojisteni.nazev } }
    end

    assert_redirected_to pojisteni_url(Pojisteni.last)
  end

  test "should show pojisteni" do
    get pojisteni_url(@pojisteni)
    assert_response :success
  end

  test "should get edit" do
    get edit_pojisteni_url(@pojisteni)
    assert_response :success
  end

  test "should update pojisteni" do
    patch pojisteni_url(@pojisteni), params: { pojisteni: { nazev: @pojisteni.nazev } }
    assert_redirected_to pojisteni_url(@pojisteni)
  end

  test "should destroy pojisteni" do
    assert_difference("Pojisteni.count", -1) do
      delete pojisteni_url(@pojisteni)
    end

    assert_redirected_to pojistenis_url
  end
end
