require "application_system_test_case"

class MusiquesTest < ApplicationSystemTestCase
  setup do
    @musique = musiques(:one)
  end

  test "visiting the index" do
    visit musiques_url
    assert_selector "h1", text: "Musiques"
  end

  test "creating a Musique" do
    visit musiques_url
    click_on "New Musique"

    fill_in "Auteur", with: @musique.auteur
    fill_in "Date", with: @musique.date
    fill_in "Nom", with: @musique.nom
    fill_in "Photo", with: @musique.photo
    click_on "Create Musique"

    assert_text "Musique was successfully created"
    click_on "Back"
  end

  test "updating a Musique" do
    visit musiques_url
    click_on "Edit", match: :first

    fill_in "Auteur", with: @musique.auteur
    fill_in "Date", with: @musique.date
    fill_in "Nom", with: @musique.nom
    fill_in "Photo", with: @musique.photo
    click_on "Update Musique"

    assert_text "Musique was successfully updated"
    click_on "Back"
  end

  test "destroying a Musique" do
    visit musiques_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Musique was successfully destroyed"
  end
end
