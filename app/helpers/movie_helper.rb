module MovieHelper
  class OmdbApi
    attr_reader :params

    def initialize(params)
      @params = params
    end

    def find_by_title
      RestClient.get (ENV['omdb_url']).to_s,
                     { params: {
                       s: params,
                       type: 'movie',
                       apikey: (ENV['omdb_api_key']).to_s
                     } }
    end
  end
end
