require 'csv'

class Survey < ApplicationRecord

  def self.to_csv(options = {})
    bom = %w(EF BB BF).map { |e| e.hex.chr }.join

    custom_columns = ["id", "e_q1_1", "e_q2_2", "e_q2_1", "e_q2_2", "e_q3_1", "e_q3_2", "e_q4_1", "e_q4_2", "e_q5_1", "e_q5_2",
                      "e_q6_1", "e_q6_2", "e_q7_1", "e_q7_2", "e_q8_1", "e_q8_2", "e_q9_1", "e_q9_2", "e_q10_1", "e_q10_2", "e_q11_1", "e_q11_2", "e_q12_1", "e_q12_2",
                      "e_q13_1", "e_q13_2", "e_q14_1", "e_q14_2", "e_q15_1", "e_q15_2", "e_q16_1", "e_q16_2", "e_q17_1", "e_q17_2", "e_q18_1", "e_q18_2", "e_q19_1", "e_q19_2",
                      "e_q20_1", "e_q20_2", "e_q21_1", "e_q21_2", "e_q22_1", "e_q22_2", "e_q23_1", "e_q23_2", "e_q24_1", "e_q24_2",
                      "p_q1", "p_q2", "p_q2_etc", "p_q3", "p_q3_etc", "p_q4", "p_q5", "p_q6", "p_q7", "p_q8", "p_q9", "p_q10",
                      "b_q1", "b_q1_etc", "b_q2", "b_q3", "b_q4", "b_q5",
                      "b_q6", "b_q7", "b_q8", "b_q9", "b_q10",
                      "b_q11", "b_q11_etc", "b_q12", "b_q12_1", "b_q12_1_etc" , "b_q12_2"]
    CSV.generate(bom) do |csv|
      csv << custom_columns
      all.each do |survey|
        csv << survey.attributes.values_at(*custom_columns)
      end
    end
  end
end
