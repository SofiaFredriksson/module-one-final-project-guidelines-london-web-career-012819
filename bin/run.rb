require_relative '../config/environment'


puts "Enter your name."
username = gets.chomp
user = Taster.find_by(name: username)

puts "Show reviews? [y/n]"
input = gets.chomp

if input == "y"
  user.reviews.each do |r|
    puts r.description
  end
end
