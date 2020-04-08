class Movie < ApplicationRecord
  def self.search(params)
    return unless params[:search]

    JSON
      .parse(MovieHelper::OmdbApi.new(params[:search]).find_by_title)['Search']
      .sort_by { |movie| movie['Year'] }
      .reverse
  end
end
