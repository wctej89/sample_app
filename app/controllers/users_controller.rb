class UsersController < ApplicationController

	def show
		@user = User.find(params[:id]) #why we use params rather than :id?
	end

  def new
  	@user = User.new
  end

  def create						#go back to 7.3.1 and read how works
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user 
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end
end
