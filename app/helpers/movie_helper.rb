module MovieHelper
  class OmdbApi
    def self.find_by_title(search)
      RestClient.get (ENV['omdb_url']).to_s,
                     { params: { s: search,
                                 type: 'movie',
                                 apikey: (ENV['omdb_api_key']).to_s } }
    end
  end
end
