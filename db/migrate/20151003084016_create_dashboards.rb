class CreateDashboards < ActiveRecord::Migration
  def change
    create_table :dashboards do |t|
      t.string :ticker
      t.float :roic_score1
      t.float :roic_score2
      t.float :roic_score3
      t.float :roic_score4
      t.float :roic_score5

      t.timestamps null: false
    end
  end
end
