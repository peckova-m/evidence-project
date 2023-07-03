require "application_system_test_case"

class PojistenecsTest < ApplicationSystemTestCase
  setup do
    @pojistenec = pojistenecs(:one)
  end

  test "visiting the index" do
    visit pojistenecs_url
    assert_selector "h1", text: "Pojistenecs"
  end

  test "should create pojistenec" do
    visit pojistenecs_url
    click_on "New pojistenec"

    fill_in "Datum narozeni", with: @pojistenec.datum_narozeni
    fill_in "Email", with: @pojistenec.email
    fill_in "Jmeno", with: @pojistenec.jmeno
    fill_in "Mesto", with: @pojistenec.mesto
    fill_in "Prijmeni", with: @pojistenec.prijmeni
    fill_in "Telefon", with: @pojistenec.telefon
    fill_in "Ulice", with: @pojistenec.ulice
    click_on "Create Pojistenec"

    assert_text "Pojistenec was successfully created"
    click_on "Back"
  end

  test "should update Pojistenec" do
    visit pojistenec_url(@pojistenec)
    click_on "Edit this pojistenec", match: :first

    fill_in "Datum narozeni", with: @pojistenec.datum_narozeni
    fill_in "Email", with: @pojistenec.email
    fill_in "Jmeno", with: @pojistenec.jmeno
    fill_in "Mesto", with: @pojistenec.mesto
    fill_in "Prijmeni", with: @pojistenec.prijmeni
    fill_in "Telefon", with: @pojistenec.telefon
    fill_in "Ulice", with: @pojistenec.ulice
    click_on "Update Pojistenec"

    assert_text "Pojistenec was successfully updated"
    click_on "Back"
  end

  test "should destroy Pojistenec" do
    visit pojistenec_url(@pojistenec)
    click_on "Destroy this pojistenec", match: :first

    assert_text "Pojistenec was successfully destroyed"
  end
end
