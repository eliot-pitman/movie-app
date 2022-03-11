require "http"

puts "enter a number"

input = gets.chomp.strip.to_i

url = HTTP.get("http://localhost:3000/specific_movie/#{input}")

puts url.parse(:json)