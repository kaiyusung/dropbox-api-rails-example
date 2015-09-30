# == Schema Information
#
# Table name: profit_margins
#
#  id            :integer          not null, primary key
#  ticker        :string
#  profit_score1 :float
#  profit_score2 :float
#  profit_score3 :float
#  profit_score4 :float
#  profit_score5 :float
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class ProfitMargin < ActiveRecord::Base
end
