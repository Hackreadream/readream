class ReadreamController < ApplicationController
  def home
     
  end
  
  def diary
      
    @post=Post.all.reverse
   
  end
  
  def community
    
  end
  
  def about
   
  end
  
  def upload
    post = Post.new
    post.title = params[:title]
    post.content = params[:content]
    post.save
    redirect_to "/diary"
  end
  
  def mydiary
    @id=params[:id]
    
     
    @post = Post.find(params[:id])
   
  end
  def sendm

    redirect_to "/about"
  end
end
