class Reserva < ApplicationRecord
  require 'time'
  belongs_to :veiculo
  belongs_to :usuario

  STATUS = { 
    aguardando: "Aguardando Pagamento",
    pago: "Pago embalando produto",
   }
 
end
