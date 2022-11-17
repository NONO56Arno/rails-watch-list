class MoviesController < ApplicationController
  def show
    @movies = Movie.find(params[:id])
  end

  def index
    @movies = Movie.all
  end

  def new
    @movies = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    @movie.save
    redirect_to movie_path(@movie)
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :overview, :poster_url, :rating)
  end
end
