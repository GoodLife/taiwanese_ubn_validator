# encoding: utf-8

module TaiwaneseUbnValidator
  class RailsValidator < ActiveModel::EachValidator
    def validate_each(record, attribute, value)
      if !TaiwaneseUbnValidator.valid?(value)
        record.errors[attribute] << (options[:message] || "有誤")
      end
    end
  end
end
