require 'httparty'

class TMDBApi
  BASE_URL = 'https://api.themoviedb.org/3'.freeze
  API_KEY = 'YOUR_API_KEY'.freeze

  def self.fetch_movies
    url = "#{BASE_URL}/movie/popular?api_key=#{API_KEY}"
    response = HTTParty.get(url)
    response['results']
  end
end
