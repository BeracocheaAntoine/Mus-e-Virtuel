require 'test_helper'

class MusiquesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @musique = musiques(:one)
  end

  test "should get index" do
    get musiques_url
    assert_response :success
  end

  test "should get new" do
    get new_musique_url
    assert_response :success
  end

  test "should create musique" do
    assert_difference('Musique.count') do
      post musiques_url, params: { musique: { auteur: @musique.auteur, date: @musique.date, nom: @musique.nom, photo: @musique.photo } }
    end

    assert_redirected_to musique_url(Musique.last)
  end

  test "should show musique" do
    get musique_url(@musique)
    assert_response :success
  end

  test "should get edit" do
    get edit_musique_url(@musique)
    assert_response :success
  end

  test "should update musique" do
    patch musique_url(@musique), params: { musique: { auteur: @musique.auteur, date: @musique.date, nom: @musique.nom, photo: @musique.photo } }
    assert_redirected_to musique_url(@musique)
  end

  test "should destroy musique" do
    assert_difference('Musique.count', -1) do
      delete musique_url(@musique)
    end

    assert_redirected_to musiques_url
  end
end
