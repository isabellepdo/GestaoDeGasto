require "test_helper"

class DespesasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @despesa = despesas(:one)
  end

  test "should get index" do
    get despesas_url
    assert_response :success
  end

  test "should get new" do
    get new_despesa_url
    assert_response :success
  end

  test "should create despesa" do
    assert_difference("Despesa.count") do
      post despesas_url, params: { despesa: { ano_ref: @despesa.ano_ref, data: @despesa.data, descricao: @despesa.descricao, descricao_especifica: @despesa.descricao_especifica, especificosubcota: @despesa.especificosubcota, mes_ref: @despesa.mes_ref, numero_documento: @despesa.numero_documento, numero_parcelas: @despesa.numero_parcelas, subcota: @despesa.subcota, vl_documento: @despesa.vl_documento, vl_liquido: @despesa.vl_liquido } }
    end

    assert_redirected_to despesa_url(Despesa.last)
  end

  test "should show despesa" do
    get despesa_url(@despesa)
    assert_response :success
  end

  test "should get edit" do
    get edit_despesa_url(@despesa)
    assert_response :success
  end

  test "should update despesa" do
    patch despesa_url(@despesa), params: { despesa: { ano_ref: @despesa.ano_ref, data: @despesa.data, descricao: @despesa.descricao, descricao_especifica: @despesa.descricao_especifica, especificosubcota: @despesa.especificosubcota, mes_ref: @despesa.mes_ref, numero_documento: @despesa.numero_documento, numero_parcelas: @despesa.numero_parcelas, subcota: @despesa.subcota, vl_documento: @despesa.vl_documento, vl_liquido: @despesa.vl_liquido } }
    assert_redirected_to despesa_url(@despesa)
  end

  test "should destroy despesa" do
    assert_difference("Despesa.count", -1) do
      delete despesa_url(@despesa)
    end

    assert_redirected_to despesas_url
  end
end
