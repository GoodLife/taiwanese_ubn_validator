require 'helper'
require 'taiwanese_ubn_validator'

describe TaiwaneseUbnValidator do

  it 'has version' do
    TaiwaneseUbnValidator.const_get('VERSION').wont_be_empty
  end

  it 'reject incorrect ubn' do
    TaiwaneseUbnValidator.valid?('73251200').must_equal false
    TaiwaneseUbnValidator.valid?('18556773').must_equal false
    TaiwaneseUbnValidator.valid?('34733521').must_equal false
  end

  it 'reject incorrect size' do
    TaiwaneseUbnValidator.valid?('123456789').must_equal false
    TaiwaneseUbnValidator.valid?('1234567').must_equal false
  end

  it 'reject input with non-digits' do
    TaiwaneseUbnValidator.valid?('123AB678').must_equal false
  end

  it 'validates correct ubn' do
    TaiwaneseUbnValidator.valid?('98770235').must_equal true

    TaiwaneseUbnValidator.valid?('22102298').must_equal true
    TaiwaneseUbnValidator.valid?('20927014').must_equal true

    TaiwaneseUbnValidator.valid?('15813981').must_equal true
    TaiwaneseUbnValidator.valid?('34733524').must_equal true
    TaiwaneseUbnValidator.valid?('23600358').must_equal true
    TaiwaneseUbnValidator.valid?('73251209').must_equal true

    TaiwaneseUbnValidator.valid?('03798509').must_equal true
    TaiwaneseUbnValidator.valid?('97178489').must_equal true
  end

  it 'validates correct ubn, with the special case that 7th digit is 7' do
    TaiwaneseUbnValidator.valid?('59066479').must_equal true

    TaiwaneseUbnValidator.valid?('18556774').must_equal true
  end

  it 'validates numbers that government sector uses' do
    TaiwaneseUbnValidator.valid?('33506509').must_equal true
    TaiwaneseUbnValidator.valid?('37302800').must_equal true

    TaiwaneseUbnValidator.valid?('31261465').must_equal true
    TaiwaneseUbnValidator.valid?('04173812').must_equal true
    TaiwaneseUbnValidator.valid?('03807654').must_equal true
    TaiwaneseUbnValidator.valid?('03813207').must_equal true
    TaiwaneseUbnValidator.valid?('04165708').must_equal true
    TaiwaneseUbnValidator.valid?('01046996').must_equal true
  end
end
