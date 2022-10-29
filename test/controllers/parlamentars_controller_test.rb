require "test_helper"

class ParlamentarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parlamentar = parlamentars(:one)
  end

  test "should get index" do
    get parlamentars_url
    assert_response :success
  end

  test "should get new" do
    get new_parlamentar_url
    assert_response :success
  end

  test "should create parlamentar" do
    assert_difference("Parlamentar.count") do
      post parlamentars_url, params: { parlamentar: { cadastro: @parlamentar.cadastro, carteira_parlamentar: @parlamentar.carteira_parlamentar, cpf: @parlamentar.cpf, legislatura: @parlamentar.legislatura, nome: @parlamentar.nome, sigla_partido: @parlamentar.sigla_partido, sigla_uf: @parlamentar.sigla_uf } }
    end

    assert_redirected_to parlamentar_url(Parlamentar.last)
  end

  test "should show parlamentar" do
    get parlamentar_url(@parlamentar)
    assert_response :success
  end

  test "should get edit" do
    get edit_parlamentar_url(@parlamentar)
    assert_response :success
  end

  test "should update parlamentar" do
    patch parlamentar_url(@parlamentar), params: { parlamentar: { cadastro: @parlamentar.cadastro, carteira_parlamentar: @parlamentar.carteira_parlamentar, cpf: @parlamentar.cpf, legislatura: @parlamentar.legislatura, nome: @parlamentar.nome, sigla_partido: @parlamentar.sigla_partido, sigla_uf: @parlamentar.sigla_uf } }
    assert_redirected_to parlamentar_url(@parlamentar)
  end

  test "should destroy parlamentar" do
    assert_difference("Parlamentar.count", -1) do
      delete parlamentar_url(@parlamentar)
    end

    assert_redirected_to parlamentars_url
  end
end
