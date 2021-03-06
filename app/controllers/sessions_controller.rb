class SessionsController < ApplicationController


  def new
  end

  def create
    session[:name] = params[:name]
    if session[:name].blank?
      redirect_to login_path
    else
      redirect_to root_path
    end
  end

  #or can do:
  #def create
    #return redirect_to(controller: 'sessions',
       #action: 'new') if !params[:name] || params[:name].empty?
    #session[:name] = params[:name]
    #redirect_to controller: 'application', action: 'hello'
  #end

  def destroy
    if session[:name].nil?
      redirect_to root_path
    else
      session.delete :name
      redirect_to root_path
    end
  end

  #or can do
  #def destroy
    #session.delete :name
    #redirect_to controller: 'application', action: 'hello'
  #end

end
