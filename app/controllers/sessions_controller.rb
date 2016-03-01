class SessionsController < ApplicationController
  def new
    @admin = Admin.new
    render :new
  end
end
