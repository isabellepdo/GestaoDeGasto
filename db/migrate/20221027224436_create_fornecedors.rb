class CreateFornecedors < ActiveRecord::Migration[7.0]
  def change
    create_table :fornecedors do |t|
      t.string :nome
      t.string :cpf_cnpj
      t.integer :ano_importado_csv_id

      t.timestamps
    end
  end
end
