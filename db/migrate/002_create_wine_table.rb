class CreateWineTable < ActiveRecord::Migration[4.2]

  def change
    create_table :wines do |t|
      t.string :title
      t.string :country
      t.string :designation
      t.float :price
      t.string :variety
      t.integer :winery_id
    end
  end

end
