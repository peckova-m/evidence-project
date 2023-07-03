require "test_helper"

class AktivniPojistenisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aktivni_pojisteni = aktivni_pojistenis(:one)
  end

  test "should get index" do
    get aktivni_pojistenis_url
    assert_response :success
  end

  test "should get new" do
    get new_aktivni_pojisteni_url
    assert_response :success
  end

  test "should create aktivni_pojisteni" do
    assert_difference("AktivniPojisteni.count") do
      post aktivni_pojistenis_url, params: { aktivni_pojisteni: { castka: @aktivni_pojisteni.castka, pojistenec_id: @aktivni_pojisteni.pojistenec_id, pojisteni_id: @aktivni_pojisteni.pojisteni_id } }
    end

    assert_redirected_to aktivni_pojisteni_url(AktivniPojisteni.last)
  end

  test "should show aktivni_pojisteni" do
    get aktivni_pojisteni_url(@aktivni_pojisteni)
    assert_response :success
  end

  test "should get edit" do
    get edit_aktivni_pojisteni_url(@aktivni_pojisteni)
    assert_response :success
  end

  test "should update aktivni_pojisteni" do
    patch aktivni_pojisteni_url(@aktivni_pojisteni), params: { aktivni_pojisteni: { castka: @aktivni_pojisteni.castka, pojistenec_id: @aktivni_pojisteni.pojistenec_id, pojisteni_id: @aktivni_pojisteni.pojisteni_id } }
    assert_redirected_to aktivni_pojisteni_url(@aktivni_pojisteni)
  end

  test "should destroy aktivni_pojisteni" do
    assert_difference("AktivniPojisteni.count", -1) do
      delete aktivni_pojisteni_url(@aktivni_pojisteni)
    end

    assert_redirected_to aktivni_pojistenis_url
  end
end
