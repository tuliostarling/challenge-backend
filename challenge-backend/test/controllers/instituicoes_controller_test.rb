require 'test_helper'

class InstituicoesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @instituico = instituicoes(:one)
  end

  test "should get index" do
    get instituicoes_url, as: :json
    assert_response :success
  end

  test "should create instituico" do
    assert_difference('Instituicoe.count') do
      post instituicoes_url, params: { instituico: { nome: @instituico.nome, notageral: @instituico.notageral } }, as: :json
    end

    assert_response 201
  end

  test "should show instituico" do
    get instituico_url(@instituico), as: :json
    assert_response :success
  end

  test "should update instituico" do
    patch instituico_url(@instituico), params: { instituico: { nome: @instituico.nome, notageral: @instituico.notageral } }, as: :json
    assert_response 200
  end

  test "should destroy instituico" do
    assert_difference('Instituicoe.count', -1) do
      delete instituico_url(@instituico), as: :json
    end

    assert_response 204
  end
end
