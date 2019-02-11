class Wine < ActiveRecord::Base
  has_many :reviews
  belongs_to :winery
  has_many :tasters, through: :reviews
end
