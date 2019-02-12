class Review < ActiveRecord::Base
  belongs_to :taster
  belongs_to :wine

  
end
