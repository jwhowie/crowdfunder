class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by(email: params[:email])

    if user 
      session[:user_id] = user.id #this session stores this user id and saves it to DB
      redirect_to products_url, notice: "Logged in!"

    else
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to products_url, notice: "Logged out!"
  end

end
