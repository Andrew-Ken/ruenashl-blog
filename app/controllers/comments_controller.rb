class CommentsController < ApplicationController
  before_filter :authenticate_user!, :only => [:destroy]
  
  def create
    # We need to get the post so that Rails knows where to assign the comment
    @post = Post.find(params[:post_id])
    
    # Here we create a new comment based on the POST data from our form (params[:comment])
    @comment = @post.comments.create(params[:comment])
    
    # Once the post is saved, we redirect the user back to the post they were viewing
    redirect_to post_path(@post)
  end
end