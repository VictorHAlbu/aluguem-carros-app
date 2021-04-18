class LojaController < UsuariosController
  before_action :set_veiculos, only: [:aluguel, :alugar]

  def index
  end

  def aluguel
    
  end

  def alugar
    if params[:dias].present?
      dias = params[:dias]
    @valor_total = dias * @veiculo.valor
  end

  def set_veiculos
    @veiculo = Veiculo.find(params[:id])
  end
end
