class SessionsController < ApplicationController

  def new
    render :new
  end

  def create
    if params[:name] == [] || params[:name] == nil
      redirect_to controller: 'sessions', action: 'new'
    else
    session[:name] = params[:name]
    redirect_to controller: 'sessions', action: 'create'
    end
  end

  def destroy
    session.delete :name
    redirect_to controller: 'sessions', action: 'create'
  end

end
