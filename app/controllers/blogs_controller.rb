class BlogsController < ApplicationController

  def index
    @blogs = Blog.all
  end

  def new
    if current_admin == nil
      redirect_to root_path
    else
    @blog = Blog.new
    render :new
    end
  end

  def create
    blog_params = params.require(:blog).permit(:title, :body, :avatar).merge(admin_id: current_admin.id)
    @blog = Blog.create(blog_params)
    redirect_to root_path
  end

  def edit
    blog_id = params[:id]
    @blog = Blog.find_by_id(blog_id)
    render :show
  end

  def update
    blog_id = params[:id]
    blog = Blog.find_by_id(blog_id)
    blog_params = params.require(:blog).permit(:title, :body, :avatar)
    blog.update_attributes(blog_params)
    redirect_to root_path
    render :update
  end

  def destroy

  end

end
