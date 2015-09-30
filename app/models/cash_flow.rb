# == Schema Information
#
# Table name: cash_flows
#
#  id          :integer          not null, primary key
#  ticker      :string
#  cash_score1 :float
#  cash_score2 :float
#  cash_score3 :float
#  cash_score4 :float
#  cash_score5 :float
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class CashFlow < ActiveRecord::Base
end
