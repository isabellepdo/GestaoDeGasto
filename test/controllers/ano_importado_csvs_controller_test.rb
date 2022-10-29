require "test_helper"

class AnoImportadoCsvsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ano_importado_csv = ano_importado_csvs(:one)
  end

  test "should get index" do
    get ano_importado_csvs_url
    assert_response :success
  end

  test "should get new" do
    get new_ano_importado_csv_url
    assert_response :success
  end

  test "should create ano_importado_csv" do
    assert_difference("AnoImportadoCsv.count") do
      post ano_importado_csvs_url, params: { ano_importado_csv: { processado: @ano_importado_csv.processado } }
    end

    assert_redirected_to ano_importado_csv_url(AnoImportadoCsv.last)
  end

  test "should show ano_importado_csv" do
    get ano_importado_csv_url(@ano_importado_csv)
    assert_response :success
  end

  test "should get edit" do
    get edit_ano_importado_csv_url(@ano_importado_csv)
    assert_response :success
  end

  test "should update ano_importado_csv" do
    patch ano_importado_csv_url(@ano_importado_csv), params: { ano_importado_csv: { processado: @ano_importado_csv.processado } }
    assert_redirected_to ano_importado_csv_url(@ano_importado_csv)
  end

  test "should destroy ano_importado_csv" do
    assert_difference("AnoImportadoCsv.count", -1) do
      delete ano_importado_csv_url(@ano_importado_csv)
    end

    assert_redirected_to ano_importado_csvs_url
  end
end
