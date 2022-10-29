class Despesa < ApplicationRecord
	belongs_to :ano_importado_csv, class_name: "AnoImportadoCsv"
	belongs_to :fornecedor, class_name: "Fornecedor"
	belongs_to :parlamentar, class_name: "Parlamentar"

	enum mes_ref: {
		janeiro: 1,
		fevereiro: 2,
		marco: 3,
		abril: 4,
		maio: 5,
		junho: 6,
		julho: 7,
		agosto: 8,
		setembro: 9,
		outubro: 10,
		novembro: 11,
		dezembro: 12
	}

	def desc_subcota
		desc = self.try(:subcota).to_s + ' - ' + self.try(:descricao).to_s
		return desc
	end

	def desc_especificacao_subcota
		if self.especificosubcota != 0
			desc = self.try(:especificosubcota).to_s + ' - ' + self.try(:descricao_especifica).to_s
		else
			desc = ''
		end
		
		return desc
	end
end
