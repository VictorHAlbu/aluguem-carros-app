class LoginAdmistradorController < ApplicationController
  layout 'login'
  skip_before_action :verify_authenticity_token
  
  def login
    if cookies[:administrador].present?
      redirect_to '/administradors'
    end
  end

  def logar
    administrador = Administrador.login(params[:login], params[:senha])
    if administrador.present?
        cookies[:administrador] = administrador.nome
        redirect_to "/administradors"
    end
  end

  def logout
    cookies[:administrador] = nil
    redirect_to "/administrador/login"
  end 
end