class PagesController < ApplicationController
  def home
    @greeting = 'Welcome to the RMSI Registration page'
    if session[:password] == "adminadmin123"
    redirect_to admin
    end
  end
  
  protected
  def admin
    
  end
end