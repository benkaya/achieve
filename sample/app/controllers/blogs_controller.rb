class BlogsController < ApplicationController
 
 
 before_action :set_blog, only: [:show, :edit, :update, :destroy]
 
  def index
    @blogs=Blog.all
   #binding.pry
   #raise
  end
  
  
  #define new page for entering new data 
  def new
  if params[:back]
      @blog = Blog.new(blog_params)
    else
      @blog = Blog.new
  end 
  end
  
  
  #define update method
  def update
    @blog = Blog.find(params[:id])
    if @blog.update(blog_params)
      redirect_to blogs_path, notice: "You have edited this blog！"
    else
      render 'edit'
    end
  end
#after entering the data , it will insert it into the controller table and create an action on the button for saving  
 
 
 def create
  #we use it in order to display the input data after saving it 
   # Blog.create(title: params[:blog][:title], content: params[:blog][:content])
   
   #we are using the concise way 
   # Blog.create(blog_params)
    
#for redirecting the page to the new page after registrating the data 
#redirect_to "/blogs/new"
   #redirect_to new_blog_url
  # redirect_to new_blog_path
  
  @blog = Blog.new(blog_params)
    if @blog.save
      # Switch to the list screen and display a message saying "You have created new blog!"
      redirect_to blogs_path, notice: "You have created new blog!"
    else
      # Redraw the input form.Back to the new.html.erb page 
      render 'new'
    end end
  
  
#to use the show action, we need to get the record from params method and find method by using the id as follows
def show 
  #params[:id]
  @blog = Blog.find(params[:id])
end


#to use the edit action, we need to get the record from params method and find method by using the id as follows
 def edit
   @blog = Blog.find(params[:id]) end


#define a destroy action  by getting the records by using the params and find method using the id and after redirect the page to the index action 
 def destroy
   @blog.destroy
    redirect_to blogs_path, notice: "You have deleted the blog!" end
    
 def confirm
    @blog = Blog.new(blog_params)
    render :new if @blog.invalid?
 end

#in order to use strong parameter for security we are going to use this method  which is a private method
private
  def blog_params
    params.require(:blog).permit(:title, :content)
  end

# method to get the value by setting id as key
    def set_blog
      @blog = Blog.find(params[:id])
    end  
end
