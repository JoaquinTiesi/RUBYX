require "test_helper"

class PeliculasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pelicula = peliculas(:one)
  end

  test "should get index" do
    get peliculas_url, as: :json
    assert_response :success
  end

  test "should create pelicula" do
    assert_difference("Pelicula.count") do
      post peliculas_url, params: { pelicula: { calificacion: @pelicula.calificacion, fecha_creacion: @pelicula.fecha_creacion, genero_id: @pelicula.genero_id, titulo: @pelicula.titulo } }, as: :json
    end

    assert_response :created
  end

  test "should show pelicula" do
    get pelicula_url(@pelicula), as: :json
    assert_response :success
  end

  test "should update pelicula" do
    patch pelicula_url(@pelicula), params: { pelicula: { calificacion: @pelicula.calificacion, fecha_creacion: @pelicula.fecha_creacion, genero_id: @pelicula.genero_id, titulo: @pelicula.titulo } }, as: :json
    assert_response :success
  end

  test "should destroy pelicula" do
    assert_difference("Pelicula.count", -1) do
      delete pelicula_url(@pelicula), as: :json
    end

    assert_response :no_content
  end
end
