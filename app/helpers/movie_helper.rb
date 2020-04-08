module MovieHelper
  class OmdbApi
    attr_reader :search

    def initialize(search)
      @search = search
    end

    def find_by_title
      RestClient.get (ENV['omdb_url']).to_s,
                     { params: {
                       s: search,
                       type: 'movie',
                       apikey: (ENV['omdb_api_key']).to_s
                     } }
    end
  end
end
