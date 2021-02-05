class Reserva < ApplicationRecord
  require 'time'
  belongs_to :veiculo
  belongs_to :cliente

  def calculo_hora_aluguel(valor_alugado, reservado_de, reservado_ate)
    @valor_alugado_total = reservado_de + reservado_ate * valor_alugado
  end
end
