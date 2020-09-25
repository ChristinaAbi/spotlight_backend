require 'test_helper'

class ArtworksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artwork = artworks(:one)
  end

  test "should get index" do
    get artworks_url, as: :json
    assert_response :success
  end

  test "should create artwork" do
    assert_difference('Artwork.count') do
      post artworks_url, params: { artwork: { artist_id: @artwork.artist_id, artist_name: @artwork.artist_name, description: @artwork.description, price: @artwork.price } }, as: :json
    end

    assert_response 201
  end

  test "should show artwork" do
    get artwork_url(@artwork), as: :json
    assert_response :success
  end

  test "should update artwork" do
    patch artwork_url(@artwork), params: { artwork: { artist_id: @artwork.artist_id, artist_name: @artwork.artist_name, description: @artwork.description, price: @artwork.price } }, as: :json
    assert_response 200
  end

  test "should destroy artwork" do
    assert_difference('Artwork.count', -1) do
      delete artwork_url(@artwork), as: :json
    end

    assert_response 204
  end
end
