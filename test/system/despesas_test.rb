require "application_system_test_case"

class DespesasTest < ApplicationSystemTestCase
  setup do
    @despesa = despesas(:one)
  end

  test "visiting the index" do
    visit despesas_url
    assert_selector "h1", text: "Despesas"
  end

  test "should create despesa" do
    visit despesas_url
    click_on "New despesa"

    fill_in "Ano ref", with: @despesa.ano_ref
    fill_in "Data", with: @despesa.data
    fill_in "Descricao", with: @despesa.descricao
    fill_in "Descricao especifica", with: @despesa.descricao_especifica
    fill_in "Especificosubcota", with: @despesa.especificosubcota
    fill_in "Mes ref", with: @despesa.mes_ref
    fill_in "Numero documento", with: @despesa.numero_documento
    fill_in "Numero parcelas", with: @despesa.numero_parcelas
    fill_in "Subcota", with: @despesa.subcota
    fill_in "Vl documento", with: @despesa.vl_documento
    fill_in "Vl liquido", with: @despesa.vl_liquido
    click_on "Create Despesa"

    assert_text "Despesa was successfully created"
    click_on "Back"
  end

  test "should update Despesa" do
    visit despesa_url(@despesa)
    click_on "Edit this despesa", match: :first

    fill_in "Ano ref", with: @despesa.ano_ref
    fill_in "Data", with: @despesa.data
    fill_in "Descricao", with: @despesa.descricao
    fill_in "Descricao especifica", with: @despesa.descricao_especifica
    fill_in "Especificosubcota", with: @despesa.especificosubcota
    fill_in "Mes ref", with: @despesa.mes_ref
    fill_in "Numero documento", with: @despesa.numero_documento
    fill_in "Numero parcelas", with: @despesa.numero_parcelas
    fill_in "Subcota", with: @despesa.subcota
    fill_in "Vl documento", with: @despesa.vl_documento
    fill_in "Vl liquido", with: @despesa.vl_liquido
    click_on "Update Despesa"

    assert_text "Despesa was successfully updated"
    click_on "Back"
  end

  test "should destroy Despesa" do
    visit despesa_url(@despesa)
    click_on "Destroy this despesa", match: :first

    assert_text "Despesa was successfully destroyed"
  end
end
