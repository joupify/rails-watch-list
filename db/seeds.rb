# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

# Create 10 fake movies with images

require 'open-uri'
require 'json'

# Seed movies using TMDB proxy API
url = 'http://tmdb.lewagon.com/movie/top_rated'
movies_serialized = URI.open(url).read
movies = JSON.parse(movies_serialized)['results']

movies.each do |movie|
  Movie.create!(
    title: movie['title'],
    overview: movie['overview'],
    poster_url: "https://image.tmdb.org/t/p/w500#{movie['poster_path']}",
    rating: movie['vote_average']
  )
end


# 10.times do
#   Movie.create!(
#     title: Faker::Movie.title,
#     overview: Faker::Lorem.paragraph,
#     poster_url: Faker::LoremFlickr.image(size: '300x450', search_terms: ['movie']),
#     rating: Faker::Number.between(from: 1, to: 5)
#   )
# end

# require 'faker'

# # Create 10 fake movies
# 10.times do
#   Movie.create!(
#     title: Faker::Movie.title,
#     overview: Faker::Lorem.paragraph,
#     poster_url: Faker::Internet.url,
#     rating: Faker::Number.between(from: 1, to: 5)
#   )
# end
