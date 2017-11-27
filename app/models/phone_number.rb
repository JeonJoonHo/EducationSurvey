require 'csv'

class PhoneNumber < ApplicationRecord
  def self.to_csv(options = {})
    custom_columns = ["id", "phone_number"]
    CSV.generate(options) do |csv|
      csv << custom_columns
      all.each do |phone_number|
        csv << phone_number.attributes.values_at(*custom_columns)
      end
    end
  end
end
