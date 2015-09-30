class CreateCashFlows < ActiveRecord::Migration
  def change
    create_table :cash_flows do |t|
      t.string :ticker
      t.float :cash_score1
      t.float :cash_score2
      t.float :cash_score3
      t.float :cash_score4
      t.float :cash_score5

      t.timestamps null: false
    end
  end
end
