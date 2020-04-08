class MovieController < ApplicationController
  def index
    @movies = Movie.search(movie_params)

    render :index, locals: { movies: @movies }
  end

  def movie_params
    params.permit(:search)
  end
end
