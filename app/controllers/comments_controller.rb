class CommentsController < ApplicationController
  def index
  end

  def new
    @comment=Comment.new
  end

  def create
    @movie = Movie.find(params[:movie_id])
    @comment = @movie.comments.create(comment_params)
    redirect_to movie_path(@movie)
  end

  def update
  end

  def destroy
    @movie = Movie.find(params[:movie_id])
    @comment = @movie.comments.find(params[:id])
    @comment.destroy
    redirect_to movie_path(@movie)
  end

  def show 
  end

  def edit
  end

private
  def comment_params
    params.require(:comment).permit!
  end
end
