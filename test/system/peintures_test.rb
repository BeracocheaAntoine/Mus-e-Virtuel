require "application_system_test_case"

class PeinturesTest < ApplicationSystemTestCase
  setup do
    @peinture = peintures(:one)
  end

  test "visiting the index" do
    visit peintures_url
    assert_selector "h1", text: "Peintures"
  end

  test "creating a Peinture" do
    visit peintures_url
    click_on "New Peinture"

    fill_in "Auteur", with: @peinture.auteur
    fill_in "Date", with: @peinture.date
    fill_in "Nom", with: @peinture.nom
    fill_in "Photo", with: @peinture.photo
    click_on "Create Peinture"

    assert_text "Peinture was successfully created"
    click_on "Back"
  end

  test "updating a Peinture" do
    visit peintures_url
    click_on "Edit", match: :first

    fill_in "Auteur", with: @peinture.auteur
    fill_in "Date", with: @peinture.date
    fill_in "Nom", with: @peinture.nom
    fill_in "Photo", with: @peinture.photo
    click_on "Update Peinture"

    assert_text "Peinture was successfully updated"
    click_on "Back"
  end

  test "destroying a Peinture" do
    visit peintures_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Peinture was successfully destroyed"
  end
end
