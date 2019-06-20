require "application_system_test_case"

class PokebagsTest < ApplicationSystemTestCase
  setup do
    @pokebag = pokebags(:one)
  end

  test "visiting the index" do
    visit pokebags_url
    assert_selector "h1", text: "Pokebags"
  end

  test "creating a Pokebag" do
    visit pokebags_url
    click_on "New Pokebag"

    click_on "Create Pokebag"

    assert_text "Pokebag was successfully created"
    click_on "Back"
  end

  test "updating a Pokebag" do
    visit pokebags_url
    click_on "Edit", match: :first

    click_on "Update Pokebag"

    assert_text "Pokebag was successfully updated"
    click_on "Back"
  end

  test "destroying a Pokebag" do
    visit pokebags_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pokebag was successfully destroyed"
  end
end
