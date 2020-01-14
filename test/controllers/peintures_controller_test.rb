require 'test_helper'

class PeinturesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @peinture = peintures(:one)
  end

  test "should get index" do
    get peintures_url
    assert_response :success
  end

  test "should get new" do
    get new_peinture_url
    assert_response :success
  end

  test "should create peinture" do
    assert_difference('Peinture.count') do
      post peintures_url, params: { peinture: { auteur: @peinture.auteur, date: @peinture.date, nom: @peinture.nom, photo: @peinture.photo } }
    end

    assert_redirected_to peinture_url(Peinture.last)
  end

  test "should show peinture" do
    get peinture_url(@peinture)
    assert_response :success
  end

  test "should get edit" do
    get edit_peinture_url(@peinture)
    assert_response :success
  end

  test "should update peinture" do
    patch peinture_url(@peinture), params: { peinture: { auteur: @peinture.auteur, date: @peinture.date, nom: @peinture.nom, photo: @peinture.photo } }
    assert_redirected_to peinture_url(@peinture)
  end

  test "should destroy peinture" do
    assert_difference('Peinture.count', -1) do
      delete peinture_url(@peinture)
    end

    assert_redirected_to peintures_url
  end
end
