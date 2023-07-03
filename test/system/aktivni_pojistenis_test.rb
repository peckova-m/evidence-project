require "application_system_test_case"

class AktivniPojistenisTest < ApplicationSystemTestCase
  setup do
    @aktivni_pojisteni = aktivni_pojistenis(:one)
  end

  test "visiting the index" do
    visit aktivni_pojistenis_url
    assert_selector "h1", text: "Aktivni pojistenis"
  end

  test "should create aktivni pojisteni" do
    visit aktivni_pojistenis_url
    click_on "New aktivni pojisteni"

    fill_in "Castka", with: @aktivni_pojisteni.castka
    fill_in "Pojistenec", with: @aktivni_pojisteni.pojistenec_id
    fill_in "Pojisteni", with: @aktivni_pojisteni.pojisteni_id
    click_on "Create Aktivni pojisteni"

    assert_text "Aktivni pojisteni was successfully created"
    click_on "Back"
  end

  test "should update Aktivni pojisteni" do
    visit aktivni_pojisteni_url(@aktivni_pojisteni)
    click_on "Edit this aktivni pojisteni", match: :first

    fill_in "Castka", with: @aktivni_pojisteni.castka
    fill_in "Pojistenec", with: @aktivni_pojisteni.pojistenec_id
    fill_in "Pojisteni", with: @aktivni_pojisteni.pojisteni_id
    click_on "Update Aktivni pojisteni"

    assert_text "Aktivni pojisteni was successfully updated"
    click_on "Back"
  end

  test "should destroy Aktivni pojisteni" do
    visit aktivni_pojisteni_url(@aktivni_pojisteni)
    click_on "Destroy this aktivni pojisteni", match: :first

    assert_text "Aktivni pojisteni was successfully destroyed"
  end
end
