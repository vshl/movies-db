class MovieController < ApplicationController
  def search
    @movies = find_by_title(movie_params[:search])

    render :index, locals: { movies: @movies }
  end

  def movie_params
    params.permit(:search)
  end

  private

  def find_by_title(search)
    return unless search

    JSON.parse(MovieHelper::OmdbApi.find_by_title(search))
  end
end
