require "application_system_test_case"

class PojistenisTest < ApplicationSystemTestCase
  setup do
    @pojisteni = pojistenis(:one)
  end

  test "visiting the index" do
    visit pojistenis_url
    assert_selector "h1", text: "Pojistenis"
  end

  test "should create pojisteni" do
    visit pojistenis_url
    click_on "New pojisteni"

    fill_in "Nazev", with: @pojisteni.nazev
    click_on "Create Pojisteni"

    assert_text "Pojisteni was successfully created"
    click_on "Back"
  end

  test "should update Pojisteni" do
    visit pojisteni_url(@pojisteni)
    click_on "Edit this pojisteni", match: :first

    fill_in "Nazev", with: @pojisteni.nazev
    click_on "Update Pojisteni"

    assert_text "Pojisteni was successfully updated"
    click_on "Back"
  end

  test "should destroy Pojisteni" do
    visit pojisteni_url(@pojisteni)
    click_on "Destroy this pojisteni", match: :first

    assert_text "Pojisteni was successfully destroyed"
  end
end
