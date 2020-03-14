class MovieController < ApplicationController
  def index
    @movies = Movie.search(params[:search])

    render :index, locals: { movies: @movies }
  end

  def movie_params
    params.require(:movie).permit(:search)
  end
end
