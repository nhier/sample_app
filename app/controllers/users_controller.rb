class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

    def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "welcome to the sample page!"
      redirect_to @user
      # Handle a successful save.
    else
      render 'new'
    end
  end
end