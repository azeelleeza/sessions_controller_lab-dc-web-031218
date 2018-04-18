class SessionsController < ApplicationController

  def create
    redirect_to '/login' and return if params[:name].nil? || params[:name].empty?
    session[:name] = params[:name]
    redirect_to '/'
  end

  def destroy
    session.delete(:name)
    # session[:name] = nil
    redirect_to '/'

  end
end
