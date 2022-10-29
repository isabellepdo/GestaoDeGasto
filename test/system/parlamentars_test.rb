require "application_system_test_case"

class ParlamentarsTest < ApplicationSystemTestCase
  setup do
    @parlamentar = parlamentars(:one)
  end

  test "visiting the index" do
    visit parlamentars_url
    assert_selector "h1", text: "Parlamentars"
  end

  test "should create parlamentar" do
    visit parlamentars_url
    click_on "New parlamentar"

    fill_in "Cadastro", with: @parlamentar.cadastro
    fill_in "Carteira parlamentar", with: @parlamentar.carteira_parlamentar
    fill_in "Cpf", with: @parlamentar.cpf
    fill_in "Legislatura", with: @parlamentar.legislatura
    fill_in "Nome", with: @parlamentar.nome
    fill_in "Sigla partido", with: @parlamentar.sigla_partido
    fill_in "Sigla uf", with: @parlamentar.sigla_uf
    click_on "Create Parlamentar"

    assert_text "Parlamentar was successfully created"
    click_on "Back"
  end

  test "should update Parlamentar" do
    visit parlamentar_url(@parlamentar)
    click_on "Edit this parlamentar", match: :first

    fill_in "Cadastro", with: @parlamentar.cadastro
    fill_in "Carteira parlamentar", with: @parlamentar.carteira_parlamentar
    fill_in "Cpf", with: @parlamentar.cpf
    fill_in "Legislatura", with: @parlamentar.legislatura
    fill_in "Nome", with: @parlamentar.nome
    fill_in "Sigla partido", with: @parlamentar.sigla_partido
    fill_in "Sigla uf", with: @parlamentar.sigla_uf
    click_on "Update Parlamentar"

    assert_text "Parlamentar was successfully updated"
    click_on "Back"
  end

  test "should destroy Parlamentar" do
    visit parlamentar_url(@parlamentar)
    click_on "Destroy this parlamentar", match: :first

    assert_text "Parlamentar was successfully destroyed"
  end
end
