# == Schema Information
#
# Table name: dashboards
#
#  id          :integer          not null, primary key
#  roic_score1 :float
#  roic_score2 :float
#  roic_score3 :float
#  roic_score4 :float
#  roic_score5 :float
#  ticker      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Dashboard < ActiveRecord::Base
  has_many :stocks

end
