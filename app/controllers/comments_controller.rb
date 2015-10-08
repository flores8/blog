class CommentsController < ApplicationController
	def create
		@post = Post.find_by_slug!(params[:post_id])
		@comment = @post.comments.build(params.require(:comment).permit(:body))
		if @comment.save
			redirect_to @post, notice: "Thank you for your comment!"
		else
			redirect_to @post, notice: "There was an error saving your comment. Please try again."
		end
	end
end