class Taster < ActiveRecord::Base
  has_many :reviews
  has_many :wines, through: :reviews

  def find_reviews_by_name
    self.reviews.each do |review|
      puts "Wine: #{review.wine.title}"
      puts "Description: #{review.description}"
      puts "Score: #{review.points}"
    end
  end

end
