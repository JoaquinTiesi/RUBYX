require "test_helper"

class PeliculapersonajesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @peliculapersonaje = peliculapersonajes(:one)
  end

  test "should get index" do
    get peliculapersonajes_url, as: :json
    assert_response :success
  end

  test "should create peliculapersonaje" do
    assert_difference("Peliculapersonaje.count") do
      post peliculapersonajes_url, params: { peliculapersonaje: { pelicula_id: @peliculapersonaje.pelicula_id, personaje_id: @peliculapersonaje.personaje_id } }, as: :json
    end

    assert_response :created
  end

  test "should show peliculapersonaje" do
    get peliculapersonaje_url(@peliculapersonaje), as: :json
    assert_response :success
  end

  test "should update peliculapersonaje" do
    patch peliculapersonaje_url(@peliculapersonaje), params: { peliculapersonaje: { pelicula_id: @peliculapersonaje.pelicula_id, personaje_id: @peliculapersonaje.personaje_id } }, as: :json
    assert_response :success
  end

  test "should destroy peliculapersonaje" do
    assert_difference("Peliculapersonaje.count", -1) do
      delete peliculapersonaje_url(@peliculapersonaje), as: :json
    end

    assert_response :no_content
  end
end
