require 'taiwanese_ubn_validator/version'

module TaiwaneseUbnValidator
  MULTIPLIER = [1,2,1,2,1,2,4,1].freeze

  # @ubn - 8 digits string
  def self.valid?(ubn)
    ubn = ubn.to_s

    return false if ubn.length != 8
    return false if !( ubn =~ /^\d+$/ )

    digits = ubn.chars.map(&:to_i)

    special_sum = calculate_special_sum(digits)

    if special_sum % 10 == 0
      return true
    else
      if digits[6] == 7 && special_sum % 10 == 9
        return true
      else
        return false
      end
    end
  end

  # @digits - Array of Integers
  def self.calculate_special_sum(digits)
    sum = 0
    8.times do |i|
      m = digits[i] * MULTIPLIER[i]
      sum += m.divmod(10).inject(0, &:+)
    end
    sum
  end
end
