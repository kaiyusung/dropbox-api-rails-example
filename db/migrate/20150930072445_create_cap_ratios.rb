class CreateCapRatios < ActiveRecord::Migration
  def change
    create_table :cap_ratios do |t|
      t.string :ticker
      t.float :cap_score1
      t.float :cap_score2
      t.float :cap_score3
      t.float :cap_score4
      t.float :cap_score5

      t.timestamps null: false
    end
  end
end
