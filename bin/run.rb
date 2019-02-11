require_relative '../config/environment'


puts "Enter your name."
username = gets.chomp
user = Taster.find_by(name: username)

## Find all of a tasters reviews - WORKING

# puts "Show reviews? [y/n]"
# input = gets.chomp
#
# if input == "y"
#   user.find_reviews_by_name
# end
