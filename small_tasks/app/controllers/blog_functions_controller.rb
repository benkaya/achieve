class BlogFunctionsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]
  def index
    @blog_functions = BlogFunction.all
  end

  def new
    @blog_function = BlogFunction.new
  end 
  
  
  def create
  @blog_function = BlogFunction.new(function_params)
    if @blog_function.save
      redirect_to blog_functions_path, notice: "You have created new blog function!"
    else
      render 'new'
    end 
  end
  
  def show
    @blog_function = BlogFunction.find(params[:id])
  end

  def edit
    @blog_function = BlogFunction.find(params[:id])
  end

  def update
    @blog_function = BlogFunction.find(params[:id])
    if @blog_function.update(function_params)
      redirect_to blog_functions_path, notice: "You have edited this blog function！"
    else
      render 'edit'
    end
  end

  def destroy
   @blog_function.destroy
    redirect_to blog_functions_path, notice: "You have deleted this blog function!" 
  end
  
  private 
  def function_params
  params.require(:blog_function).permit(:name, :email, :content)
  end
  def set_blog
      @blog_function = BlogFunction.find(params[:id])
  end 
end
