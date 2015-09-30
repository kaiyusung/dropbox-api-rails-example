class DashboardController < ApplicationController

  def show
    files = dropbox.ls
    roic = CSV.parse(files[3].download)
    if Dashboard.count() == 0
        roic.length.times do |i|
          Dashboard.create!({"ticker"=>roic[i][0], "roic_score1" =>roic[i][1], "roic_score2" =>roic[i][2], "roic_score3" =>roic[i][3], "roic_score4" =>roic[i][4], "roic_score5" =>roic[i][5]})
        end
    end
    @number = Dashboard.count()
  end

end
