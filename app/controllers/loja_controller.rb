class LojaController < UsuariosController
  before_action :set_veiculos, only: :aluguel

  def index
  end

  def aluguel
    
  end

  def set_veiculos
    @veiculo = Veiculo.find(params[:id])
  end
end
