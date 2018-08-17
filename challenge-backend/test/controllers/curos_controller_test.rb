require 'test_helper'

class CurosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @curo = curos(:one)
  end

  test "should get index" do
    get curos_url, as: :json
    assert_response :success
  end

  test "should create curo" do
    assert_difference('Curo.count') do
      post curos_url, params: { curo: { mediaaluno: @curo.mediaaluno, nome: @curo.nome, notacurso: @curo.notacurso } }, as: :json
    end

    assert_response 201
  end

  test "should show curo" do
    get curo_url(@curo), as: :json
    assert_response :success
  end

  test "should update curo" do
    patch curo_url(@curo), params: { curo: { mediaaluno: @curo.mediaaluno, nome: @curo.nome, notacurso: @curo.notacurso } }, as: :json
    assert_response 200
  end

  test "should destroy curo" do
    assert_difference('Curo.count', -1) do
      delete curo_url(@curo), as: :json
    end

    assert_response 204
  end
end
