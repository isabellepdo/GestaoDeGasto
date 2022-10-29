class PreenchendoDados < ActiveRecord::Migration[7.0]
  def change
    ano = AnoImportadoCsv.new(
      processado: true
    )

    ano.save(validate: false)

    parlamentar1 = Parlamentar.new(
      nome: "Teste 1",
      cpf: "001.001.001-11",
      cadastro: 1,
      carteira_parlamentar: 100,
      legislatura: 2021,
      sigla_uf: "CE",
      sigla_partido: "PA",
      ano_importado_csv: ano.id
    )
    parlamentar1.save

    parlamentar2 = Parlamentar.new(
      nome: "Teste 2",
      cpf: "002.002.002-22",
      cadastro: 2,
      carteira_parlamentar: 200,
      legislatura: 2021,
      sigla_uf: "CE",
      sigla_partido: "PA",
      ano_importado_csv: ano.id
    )
    parlamentar2.save

    fornecedor = Fornecedor.new(
      nome: "Fornecedor Tese",
      cpf_cnpj: "002.002.002-22",
      ano_importado_csv: ano.id
    )
    fornecedor.save

    despesa = Despesa.new(
      subcota: 1,
      descricao: "COMBUSTÍVEIS E LUBRIFICANTES",
      especificosubcota: 1,
      descricao_especifica: "Veículos Automotores",
      data: "2022-10-28 11:34:55.066886",
      vl_documento: 1000,
      vl_liquido: 900,
      mes_ref: 1,
      ano_ref: 2021,
      numero_parcelas: 1,
      numero_documento: 1,
      fornecedor_id: fornecedor.id,
      parlamentar_id: parlamentar1.id,
      ano_importado_csv: ano.id
    )
    despesa.save

    despesa = Despesa.new(
      subcota: 1,
      descricao: "COMBUSTÍVEIS E LUBRIFICANTES",
      especificosubcota: 1,
      descricao_especifica: "Veículos Automotores",
      data: "2022-10-28 11:34:55.066886",
      vl_documento: 1500,
      vl_liquido: 1200,
      mes_ref: 1,
      ano_ref: 2021,
      numero_parcelas: 1,
      numero_documento: 2,
      fornecedor_id: fornecedor.id,
      parlamentar_id: parlamentar2.id,
      ano_importado_csv: ano.id
    )
    despesa.save

    despesa = Despesa.new(
      subcota: 10,
      descricao: "TELEFONIA",
      especificosubcota: 0,
      data: "2022-10-28 11:34:55.066886",
      vl_documento: 100,
      vl_liquido: 90,
      mes_ref: 1,
      ano_ref: 2021,
      numero_parcelas: 1,
      numero_documento: 3,
      fornecedor_id: fornecedor.id,
      parlamentar_id: parlamentar1.id,
      ano_importado_csv: ano.id
    )
    despesa.save
  end
end
