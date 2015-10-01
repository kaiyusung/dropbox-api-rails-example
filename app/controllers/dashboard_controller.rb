class DashboardController < ApplicationController

  def index
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
          TotalScore.create({"ticker"=>roic[i][0],
            "total_score1" => (roic[i][1].to_f + capratio[i][1].to_f + cashflow[i][1].to_f + profitmargin[i][1].to_f),
            "total_score2" => (roic[i][2].to_f + capratio[i][2].to_f + cashflow[i][2].to_f + profitmargin[i][2].to_f),
            "total_score3" =>(roic[i][3].to_f + capratio[i][3].to_f + cashflow[i][3].to_f + profitmargin[i][3].to_f),
            "total_score4" =>(roic[i][4].to_f + capratio[i][4].to_f + cashflow[i][4].to_f + profitmargin[i][4].to_f),
            "total_score5" =>(roic[i][5].to_f + capratio[i][5].to_f + cashflow[i][5].to_f + profitmargin[i][5].to_f),
            "average_score" => (((roic[i][1].to_f + capratio[i][1].to_f + cashflow[i][1].to_f + profitmargin[i][1].to_f) +
                                        (roic[i][2].to_f + capratio[i][2].to_f + cashflow[i][2].to_f + profitmargin[i][2].to_f) +
                                        (roic[i][3].to_f + capratio[i][3].to_f + cashflow[i][3].to_f + profitmargin[i][3].to_f) +
                                        (roic[i][4].to_f + capratio[i][4].to_f + cashflow[i][4].to_f + profitmargin[i][4].to_f) +
                                        (roic[i][5].to_f + capratio[i][5].to_f + cashflow[i][5].to_f + profitmargin[i][5].to_f))/5) })
        end
    end

    def show
      @totalscore = get_totalscore
    end

    @number = Dashboard.count()

    #Update rank 1
    i = 1
    TotalScore.order(total_score1: :desc).each do |row|
      id = row.id
      TotalScore.update(id, :rank1 => i)
      i += 1
    end

    #Update rank 2
    i = 1
    TotalScore.order(total_score2: :desc).each do |row|
      id = row.id
      TotalScore.update(id, :rank2 => i)
      i += 1
    end

    #Update rank 3
    i = 1
    TotalScore.order(total_score3: :desc).each do |row|
      id = row.id
      TotalScore.update(id, :rank3 => i)
      i += 1
    end

    #Update rank 4
    i = 1
    TotalScore.order(total_score4: :desc).each do |row|
      id = row.id
      TotalScore.update(id, :rank4 => i)
      i += 1
    end

    #Update rank 5
    i = 1
    TotalScore.order(total_score5: :desc).each do |row|
      id = row.id
      TotalScore.update(id, :rank5 => i)
      i += 1
    end

    #Update average rank
    i = 1
    TotalScore.order(average_score: :desc).each do |row|
      id = row.id
      TotalScore.update(id, :average_rank => i)
      i += 1
    end

    @totalscores = TotalScore.all
  end

  private

  def get_totalscore
    TotalScore.find(params[:id])
  end





end
