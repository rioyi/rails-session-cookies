class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password_digest])
      session[:user_id] = user.id
      render json: {you:'good boy'}, status: :ok
    else
      render json: { mensaje: 'El email o clave esta mala'}
    end

  end

  def destroy
    session[:user_id] = nil
    render json: {mensaje: 'Adios!!!'}
  end
end
