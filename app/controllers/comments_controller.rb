class CommentsController < ApplicationController
  http_basic_authenticate_with name: "cstockton", password: "secret123", only: :destroy

  def create
    @review = Review.find(params[:review_id])
    @comment = @review.comments.create(comment_params)
    redirect_to review_path(@review)
  end

  def destroy
    @review = Review.find(params[:review_id])
    @comment = @review.comments.find(params[:id])
    @comment.destroy
    redirect_to review_path(@review)
  end
     
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
