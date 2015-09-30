class DashboardController < ApplicationController

  def show
    files = dropbox.ls
    roic = CSV.parse(files[3].download)
    capratio = CSV.parse(files[0].download)
    cashflow = CSV.parse(files[1].download)
    profitmargin = CSV.parse(files[2].download)
    if Dashboard.count() == 0
        roic.length.times do |i|
          Dashboard.create!({"ticker"=>roic[i][0], "roic_score1" =>roic[i][1], "roic_score2" =>roic[i][2], "roic_score3" =>roic[i][3], "roic_score4" =>roic[i][4], "roic_score5" =>roic[i][5]})
          CapRatio.create!({"ticker"=>capratio[i][0], "cap_score1" =>capratio[i][1], "cap_score2" =>capratio[i][2], "cap_score3" =>capratio[i][3], "cap_score4" =>capratio[i][4], "cap_score5" =>capratio[i][5]})
          CashFlow.create!({"ticker"=>cashflow[i][0], "cash_score1" =>cashflow[i][1], "cash_score2" =>cashflow[i][2], "cash_score3" =>cashflow[i][3], "cash_score4" =>cashflow[i][4], "cash_score5" =>cashflow[i][5]})
          ProfitMargin.create!({"ticker"=>profitmargin[i][0], "profit_score1" =>profitmargin[i][1], "profit_score2" =>profitmargin[i][2], "profit_score3" =>profitmargin[i][3], "profit_score4" =>profitmargin[i][4], "profit_score5" =>profitmargin[i][5]})
        end
    end
    @number = Dashboard.count()
  end

end
