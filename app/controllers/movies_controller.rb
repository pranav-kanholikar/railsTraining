class MoviesController < ApplicationController


  

  layout "coustome"
  http_basic_authenticate_with name: "pranav", password: "secret", except: [:index, :show]

  def index
    @movie=Movie.all
  end

  def new
    @movie=Movie.new
  end

  def create
    @movie=Movie.new(movie_params)
    if @movie.save
      flash[:notice]= "Movie created sucessfully!!"
      redirect_to movies_path
    else
      render 'new'
    end
  end

  def update
    @movie=Movie.find params[:id]
      if @movie.update_attributes(movie_params)
        flash[:notice]= "Movie updated sucessfully!!"
        redirect_to movies_path
      else
        render 'edit'
      end
  end

  def destroy
    @movie=Movie.find params[:id]
    @movie.destroy
  end

  def show
    @movie=Movie.find params[:id]
  end

  def edit
    @movie=Movie.find params[:id]
  end

private
  def movie_params
    params.require(:movie).permit!
  end
end

