class CommentsController < ApplicationController
    before_filter:load_article
    def create
     @comment =@post.comments.new(params[:comment])
     if @comment.save
        redirect_to @post, :notice=>'Thanks for your comment'
     else
        redirect_to @post, :alert=>'Unable to add comment'
     end
    end
   
   def destroy
      @comment =@post.comments.find(params[:id])
      @comment.destroy
      redirect_to @post, :notice =>'comment deleted'
   end

   private
      def load_post
          @post = Post.find(params[:post_id])   
      end
end
