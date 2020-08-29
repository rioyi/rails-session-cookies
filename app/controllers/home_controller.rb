class HomeController < ApplicationController
  # before_action :authorized
  def index
    render json:{mensaje: 'Holaaaaa!!!!'}, status: 200
  end
end
