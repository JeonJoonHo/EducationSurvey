class SurveyController < ApplicationController

  def index
    @surveys = Survey.all

    respond_to do |format|
      format.html
      format.csv { send_data @surveys.to_csv }
      format.xls { send_data @surveys.to_csv(col_sep: "\t") }
    end
  end

  def survey_create
    bq12_1 = params[:bq12_1]
    bq12_2 = params[:bq12_2]

    @survey = Survey.create(e_q1_1: params[:eq11], e_q1_2: params[:eq12], e_q2_1: params[:eq21], e_q2_2: params[:eq22],
                            e_q3_1: params[:eq31], e_q3_2: params[:eq32], e_q4_1: params[:eq41], e_q4_2: params[:eq42],
                            e_q5_1: params[:eq51], e_q5_2: params[:eq52], e_q6_1: params[:eq61], e_q6_2: params[:eq62],
                            e_q7_1: params[:eq71], e_q7_2: params[:eq72], e_q8_1: params[:eq81], e_q8_2: params[:eq82],
                            e_q9_1: params[:eq91], e_q9_2: params[:eq92], e_q10_1: params[:eq101], e_q10_2: params[:eq102],
                            e_q11_1: params[:eq111], e_q11_2: params[:eq112], e_q12_1: params[:eq121], e_q12_2: params[:eq122],
                            e_q13_1: params[:eq131], e_q13_2: params[:eq132], e_q14_1: params[:eq141], e_q14_2: params[:eq142],
                            e_q15_1: params[:eq151], e_q15_2: params[:eq152], e_q16_1: params[:eq161], e_q16_2: params[:eq162],
                            e_q17_1: params[:eq171], e_q17_2: params[:eq172], e_q18_1: params[:eq181], e_q18_2: params[:eq182],
                            e_q19_1: params[:eq191], e_q19_2: params[:eq192], e_q20_1: params[:eq201], e_q20_2: params[:eq202],
                            e_q21_1: params[:eq211], e_q21_2: params[:eq212], e_q22_1: params[:eq221], e_q22_2: params[:eq222],
                            e_q23_1: params[:eq231], e_q23_2: params[:eq232], e_q24_1: params[:eq241], e_q24_2: params[:eq242],
                            p_q1: params[:pq1], p_q2: params[:pq2], p_q3: params[:pq3], p_q4: params[:pq4],
                            p_q5: params[:pq5], p_q6: params[:pq6], p_q7: params[:pq7], p_q8: params[:pq8],
                            p_q9: params[:pq9], p_q10: params[:pq10], b_q1: params[:bq1], b_q2: params[:bq2], b_q3: params[:bq3], b_q4: params[:bq4], b_q5: params[:bq5],
                            b_q6: params[:bq6], b_q7: params[:bq7], b_q8: params[:bq8], b_q9: params[:bq9], b_q10: params[:bq10], b_q11: params[:bq11],
                            b_q12: params[:bq12], b_q12_1: bq12_1, b_q12_2: bq12_2);

    redirect_to '/survey/finish'
  end

  def finish_create
    @phone_number = PhoneNumber.create(phone_number: params[:number])

    redirect_to '/survey/finish'
  end

end
