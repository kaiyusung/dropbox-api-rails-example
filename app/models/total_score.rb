# == Schema Information
#
# Table name: total_scores
#
#  id             :integer          not null, primary key
#  ticker         :string
#  total_score1   :float
#  total_score2   :float
#  total_score3   :float
#  total_score4   :float
#  total_score5   :float
#  average_score  :float
#  rank1          :integer
#  rank2          :integer
#  rank3          :integer
#  rank4          :integer
#  rank5          :integer
#  average_rank   :integer
#  pe_ratio       :float
#  price_per_book :float
#  price          :float
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class TotalScore < ActiveRecord::Base
  has_many :stocks
end
