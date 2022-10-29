class CreateDespesas < ActiveRecord::Migration[7.0]
  def change
    create_table :despesas do |t|
      t.integer :subcota
      t.string :descricao
      t.integer :especificosubcota
      t.string :descricao_especifica
      t.timestamp :data
      t.decimal :vl_documento
      t.decimal :vl_liquido
      t.integer :mes_ref
      t.integer :ano_ref
      t.integer :numero_parcelas
      t.string :numero_documento
      t.integer :fornecedor_id
      t.integer :parlamentar_id
      t.integer :ano_importado_csv_id

      t.timestamps
    end
  end
end
