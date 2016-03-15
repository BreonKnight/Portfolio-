class SessionsController < ApplicationController

  def new
    @admin = Admin.new
    render :new
  end

  def create
    admin_params = params.require(:admin).permit(:email, :password)
    @admin = Admin.confirm(admin_params)
    if @admin
      login(@admin)
      redirect_to root_path
    else
      redirect_to login_path
    end
  end

  def destroy
    logout
    redirect_to root_path
  end
end
