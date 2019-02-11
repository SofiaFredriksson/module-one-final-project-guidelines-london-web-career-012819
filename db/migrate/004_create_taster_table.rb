class CreateTasterTable < ActiveRecord::Migration[4.2]

  def change
    create_table :tasters do |t|
      t.string :name
      t.string :twitter_handle
    end
  end

end
