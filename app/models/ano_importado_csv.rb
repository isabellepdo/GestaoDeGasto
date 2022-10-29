require 'csv'

class AnoImportadoCsv < ApplicationRecord

	has_one_attached :arquivo

	def processar_csv
		csv_file = self.arquivo.download

		csv = CSV.parse(csv_file, headers: true)

		csv.each do |row|

			if linha[5] == 'CE'
				parlamentar = Parlamentar.new(
					nome: row["txNomeParlamentar"],
					cpf: row["cpf"],
					cadastro: row["ideCadastro"],
					carteira_parlamentar: row["nuCarteiraParlamentar"],
					legislatura: row["nuLegislatura"],
					sigla_uf: row["sgUF"],
					sigla_partido: row["sgPartido"],
					ano_importado_csv: self.id
				)
				parlamentar.save

				fornecedor = Fornecedor.new(
				  nome: row["txtFornecedor"],
				  cpf_cnpj: row["txtCNPJCPF"],
				  ano_importado_csv: self.id
				)
				fornecedor.save

				despesa = Despesa.new(
				  subcota: row["numSubCota"],
				  descricao: row["txtDescricao"],
				  especificosubcota: row["numEspecificacaoSubCota"],
				  descricao_especifica: row["txtDescricaoEspecificacao"],
				  data: row["datEmissao"],
				  vl_documento: row["vlrDocumento"],
				  vl_liquido: row["vlrLiquido"],
				  mes_ref: row["numMes"],
				  ano_ref: row["numAno"],
				  numero_parcelas: row["numParcela"],
				  numero_documento: row["ideDocumento"],
				  fornecedor_id: fornecedor.id,
				  parlamentar_id: parlamentar.id,
				  ano_importado_csv: self.id
				)
				despesa.save

			end
		end
		
		self.processado = true
		self.save
	end
end
