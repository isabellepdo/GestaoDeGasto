class CreateParlamentars < ActiveRecord::Migration[7.0]
  def change
    create_table :parlamentars do |t|
      t.string :nome
      t.string :cpf
      t.integer :cadastro
      t.integer :carteira_parlamentar
      t.integer :legislatura
      t.string :sigla_uf
      t.string :sigla_partido
      t.integer :ano_importado_csv_id

      t.timestamps
    end
  end
end
