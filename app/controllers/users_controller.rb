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
      # Handle a successful save.
    else
      render 'new'
    end
  end
end
