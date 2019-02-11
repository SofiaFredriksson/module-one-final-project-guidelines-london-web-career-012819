class Wine < ActiveRecord::Base
  has_many :reviews
  belongs_to :winery
  has_many :tasters, through: :reviews

  def self.top_10_wines
    wine_point_hash = {}

    Wine.all.each do |wine|
      points = wine.reviews.sum("points")
      average = points / (wine.reviews.count)

      wine_point_hash[wine.title] = average
    end

    best_10_wines = wine_point_hash.sort_by { |key, value| value }.reverse.first(10).to_h
  end

end
