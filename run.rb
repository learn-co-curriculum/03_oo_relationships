require 'pry'
require_relative './tweet'
require_relative './user'

binding.pry
puts 'Would you like to create a user?'
answer = gets.chomp
if answer.downcase == 'y'
  puts 'Enter a username'
  username = gets.chomp
  user = User.new(username)
end

binding.pry

user.post_tweet('great # coffee')
puts user.tweets
