class CreateWineryTable < ActiveRecord::Migration[4.2]

  def change
    create_table :wineries do |t|
      t.string :name
      t.string :province
      t.string :region_1
      t.string :region_2
    end
  end

end
