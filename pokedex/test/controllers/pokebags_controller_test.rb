require 'test_helper'

class PokebagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pokebag = pokebags(:one)
  end

  test "should get index" do
    get pokebags_url
    assert_response :success
  end

  test "should get new" do
    get new_pokebag_url
    assert_response :success
  end

  test "should create pokebag" do
    assert_difference('Pokebag.count') do
      post pokebags_url, params: { pokebag: {  } }
    end

    assert_redirected_to pokebag_url(Pokebag.last)
  end

  test "should show pokebag" do
    get pokebag_url(@pokebag)
    assert_response :success
  end

  test "should get edit" do
    get edit_pokebag_url(@pokebag)
    assert_response :success
  end

  test "should update pokebag" do
    patch pokebag_url(@pokebag), params: { pokebag: {  } }
    assert_redirected_to pokebag_url(@pokebag)
  end

  test "should destroy pokebag" do
    assert_difference('Pokebag.count', -1) do
      delete pokebag_url(@pokebag)
    end

    assert_redirected_to pokebags_url
  end
end
