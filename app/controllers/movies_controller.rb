class MoviesController < ApplicationController
  before_action :set_movie, only: %i[show]

  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(set_params)
    @movie.save
    redirect_to movies_path
  end

  def show; end

  def edit
    @movies = Movie.all
  end

  def update
    @movies = Movie.all
  end

  def destroy
    @movies = Movie.all
  end

  private

  def set_movie
    Movie.find(params[:id])
  end

  def set_params
    params.require(:movie).permit(:title, :overview, :poster_url, :rating)
  end
end
