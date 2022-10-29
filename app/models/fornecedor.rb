class Fornecedor < ApplicationRecord
  belongs_to :ano_importado_csv

  has_many :despesas

  def fornecedor_dados
    dados = self.nome.to_s + '(' + self.cpf_cnpj.to_s + ')'

    return dados
  end
end
