class Movie < ApplicationRecord
  def self.search(params)
    return unless params

    JSON
      .parse(MovieHelper::OmdbApi.new(params).find_by_title)['Search']
      .sort_by { |movie| movie['Year'] }
      .reverse
  end
end
