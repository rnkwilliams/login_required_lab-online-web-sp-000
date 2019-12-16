class SessionsController < ApplicationController
  
  def new
  end
  
  def create
    if params[:name].present?
      session[:name] = params[:name]
      redirect_to '/'
      redirect_to :login
    else
      
    end
  end
  
  def destroy
    if !session[:name].nil?
      session.delete :name
    end
      redirect_to '/'
    end
  end
  
end
