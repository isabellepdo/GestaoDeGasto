class Parlamentar < ApplicationRecord
  belongs_to :ano_importado_csv

  has_many :despesas

  def parlamentar_dados
    dados = self.nome.to_s + '(' + self.cpf.to_s + ')'

    return dados
  end
end
