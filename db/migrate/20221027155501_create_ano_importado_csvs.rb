class CreateAnoImportadoCsvs < ActiveRecord::Migration[7.0]
  def change
    create_table :ano_importado_csvs do |t|
      t.boolean :processado, default: false

      t.timestamps
    end
  end
end
