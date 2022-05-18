class SessionsController < ApplicationController

  skip_before_action :authorized, only: [:welcome, :new, :create]

  def new
    @user = User.new
  end

  def create
    puts 'in sessions@new'
    @user = User.find_by(username: params[:username])
    puts @user
    if @user && @user.authenticate(params[:password])
      puts 'authenticated'
      session[:user_id] = @user.id 
    end
    redirect_to '/'
  end

  def delete
    session[:user_id] = nil 
    redirect_to '/'
  end

  def welcome
    
  end

end
