# == Schema Information
#
# Table name: cap_ratios
#
#  id         :integer          not null, primary key
#  ticker     :string
#  cap_score1 :float
#  cap_score2 :float
#  cap_score3 :float
#  cap_score4 :float
#  cap_score5 :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CapRatio < ActiveRecord::Base
end
