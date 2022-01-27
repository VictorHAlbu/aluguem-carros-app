class LojaController < UsuariosController
  include HTTParty
  before_action :set_veiculos, only: [:aluguel, :alugar]
  skip_before_action :verify_authenticity_token, only: :alugar
  before_action :set_token_pagamento, only: :aluguel
  
  def index
  end

  def aluguel
    
  end

  def alugar
    if params[:cardNumber].present? && 
      params[:cardName].present? && 
      params[:expitionDate].present? && 
      params[:cvv].present?
      
      if params[:dias].present?
        dias = params[:dias].to_i
        @valor_total = dias * @veiculo.valor
          reserva = Reserva.new(reservado_de: Time.now, reservado_ate: Time.now + dias.days, valor_alugado: @valor_total, 
          status: Reserva::STATUS[:aguardando], veiculo_id: @veiculo.id, usuario_id: cookies[:usuario])
          if reserva.save!
            redirect_to "/confirmacao_pagamento/#{reserva.id}"
            return
          end
          else
            redirect_to "/login"
          return
        end
      end
    
    redirect_to "/loja/locacao/#{@veiculo.id}", notice: "Houve um erro ao ir a tela de confirmação"
  end

  def confirmacao_pagamento
      @reserva = Reserva.find(params[:reserva_id])
  end

  private

  def set_token_pagamento
   response = HTTParty.post("https://ws.sandbox.pagseguro.uol.com.br/v2/sessions?email=vh12albuquerque@gmail.com&token=46BBC7899BEF485390BD3013A63B7DB9")
    if (200..299).include?(response.code)
      @session_id = response.parsed_response["session"]["id"]
    end
  end

  def set_veiculos
    @veiculo = Veiculo.find(params[:id])
  end
end
