class CreateTotalScores < ActiveRecord::Migration
  def change
    create_table :total_scores do |t|
      t.string :ticker
      t.float :total_score1
      t.float :total_score2
      t.float :total_score3
      t.float :total_score4
      t.float :total_score5
      t.float :average_score
      t.integer :rank1
      t.integer :rank2
      t.integer :rank3
      t.integer :rank4
      t.integer :rank5
      t.integer :average_rank
      t.float :pe_ratio
      t.float :price_per_book
      t.float :price

      t.timestamps null: false
    end
  end
end
