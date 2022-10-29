require "application_system_test_case"

class AnoImportadoCsvsTest < ApplicationSystemTestCase
  setup do
    @ano_importado_csv = ano_importado_csvs(:one)
  end

  test "visiting the index" do
    visit ano_importado_csvs_url
    assert_selector "h1", text: "Ano importado csvs"
  end

  test "should create ano importado csv" do
    visit ano_importado_csvs_url
    click_on "New ano importado csv"

    check "Processado" if @ano_importado_csv.processado
    click_on "Create Ano importado csv"

    assert_text "Ano importado csv was successfully created"
    click_on "Back"
  end

  test "should update Ano importado csv" do
    visit ano_importado_csv_url(@ano_importado_csv)
    click_on "Edit this ano importado csv", match: :first

    check "Processado" if @ano_importado_csv.processado
    click_on "Update Ano importado csv"

    assert_text "Ano importado csv was successfully updated"
    click_on "Back"
  end

  test "should destroy Ano importado csv" do
    visit ano_importado_csv_url(@ano_importado_csv)
    click_on "Destroy this ano importado csv", match: :first

    assert_text "Ano importado csv was successfully destroyed"
  end
end
