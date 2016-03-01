class AdminsController < ApplicationController
  def index
    @admins = Admin.all
    render :index
  end

  def show
    @admin = Admin.find_by_id(params[:id])
  end

  def create
    admin_params = params.require(:admin).permit(:first_name, :last_name, :email, :github, :twitter, :city, :state, :password, :avatar)
    @admin = Admin.create(admin_params)
    redirect_to root_path
  end
end
