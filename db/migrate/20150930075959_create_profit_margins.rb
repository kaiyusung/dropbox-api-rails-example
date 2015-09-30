class CreateProfitMargins < ActiveRecord::Migration
  def change
    create_table :profit_margins do |t|
      t.string :ticker
      t.float :profit_score1
      t.float :profit_score2
      t.float :profit_score3
      t.float :profit_score4
      t.float :profit_score5

      t.timestamps null: false
    end
  end
end
