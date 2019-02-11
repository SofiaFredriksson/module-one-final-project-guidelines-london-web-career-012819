class CreateReviewTable < ActiveRecord::Migration[4.2]

  def change
    create_table :reviews do |t|
      t.text :description
      t.integer :points
      t.integer :wine_id
      t.integer :taster_id
    end
  end

end
