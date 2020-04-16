require 'rails_helper'

describe MovieHelper do
  let(:api_key) { (ENV['omdb_api_key']).to_s }
  let(:search) { 'Star Wars' }

  before do
    @omdb = MovieHelper::OmdbApi.find_by_title(search)
  end

  describe '#initialize' do
    it 'api key is not empty' do
      expect(api_key).not_to be_empty
    end
  end

  describe '#find_by_title' do
    it 'response returns success' do
      expect(@omdb.code).to eq 200
    end

    it 'response returns json' do
      expect(@omdb.headers[:content_type])
        .to eq 'application/json; charset=utf-8'
    end

    it 'response contains movie title' do
      expect(
        JSON.parse(@omdb.body)['Search']
        .find { |movie| movie['Title'] =~ /#{search}/ }
      ).not_to be_nil
    end
  end
end
