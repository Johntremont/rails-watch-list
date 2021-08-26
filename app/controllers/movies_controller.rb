class MoviesController < ApplicationController
  before_action :set_movie, only: %i[show edit update destroy]

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

  def edit; end

  def update
    if @movie.update(set_params)
      redirect_to movies_path(@movie)
    else
      render :edit
    end
  end

  def destroy
    if @movie.destroy
      redirect_to movies_path
    else
      render :show
    end
  end

  private

  def set_movie
    @movie = Movie.find(params[:id])
  end

  def set_params
    params.require(:movie).permit(:title, :overview, :poster_url, :rating)
  end
end
