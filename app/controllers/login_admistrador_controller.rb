class LoginAdmistradorController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def login
  end

  def logar
    administrador = Administrador.login(params[:login], params[:senha])
    if administrador.present?
        cookies[:administrador] = administrador.nome
        redirect_to "/"
    end
  end

  def sair
    cookies[:administrador] = nil
    redirect_to "/administrador/login"
  end 
end