require 'rails_helper'

describe MovieHelper do
  let(:api_key) { (ENV['omdb_api_key']).to_s }
  let(:params) { 'Star Wars' }

  before do
    @omdb = MovieHelper::OmdbApi.new(params)
  end

  describe '#initialize' do
    it 'api key is not empty' do
      expect(api_key).not_to be_empty
    end

    it 'params matches input' do
      expect(params).to eq @omdb.params
    end
  end

  describe '#find_by_title' do
    it 'response returns success' do
      expect(@omdb.find_by_title.code).to eq 200
    end

    it 'response returns json' do
      expect(@omdb.find_by_title.headers[:content_type])
        .to eq 'application/json; charset=utf-8'
    end

    it 'response contains movie title' do
      expect(
        JSON.parse(@omdb.find_by_title.body)['Search']
        .find { |movie| movie['Title'] =~ /#{params}/ }
      ).not_to be_nil
    end
  end
end
