class FriendsController < ApplicationController
  #before_action :set_blog, :only [show,edit,]
  def index
    @friends = Friend.all
  end

  def show
    @friend = Friend.find.(params[:id])
  end

  def new
    @friend = Friend.new
  end

  def create
    @friend = Friend.new(friends_params)
  
    if @friend.save
      redirect_to pages_path
    else
      render :new
    end
  end
  
  def edit
    @friend = Friend.find(params[:id])
  end
  
  def update
    @friend = Friend.find(params[:id])
  
    if @friend.update(friend_params)
      redirect_to pages_path
    else
      render :edit
    end
  end
  
  def destroy
    Friend.find(params[:id]).destroy
    redirect_to friends_path
  end
    
  
  ##@blog.destroy
    #this only works if 
    #@blog =  blog.find(params[id]) 


  # def create
  #   @blog = Blog.create(blog_params)

  #   if @blog.save
  #     redirect_to blogs_path
  #   else
  #     render :new
  #   end
  # end

  
  
  ##########
  # def edit
  #   @blog = blog.find(params[id]) 
  # end
  
  
  # private
  #   def set blog 
  #     @blog = blog.find(params[id]) 
  #   end

  # def blog_params
  #   params.require(:blog).permit(:title,:body)

  #create and update under private method 
end
