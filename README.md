# Taiwanese UBN Validator

驗證台灣/中華民國的統一編號

### 安裝

Gemfile 裡面寫入：

    gem 'taiwanese_ubn_validator'
    
然後在命令列執行

    bundle install

### 使用方法

#### 純 Ruby 驗證

    TaiwaneseUbnValidator.valid?('12345678') # 會回傳 false
    TaiwaneseUbnValidator.valid?('16612907') # 會回傳 true

#### Rails/ActiveModel Validator

Rails 專案可用以下方式在 ActiveModel 驗證：

    validates :ubn, 'taiwanese_ubn_validator/rails' => true
    
本 gem 只支援 Rails 3.1 以上。

### 計算法參考

* http://www.ntbsa.gov.tw/etwmain/download?sid=13a5ed9655d00000c3728d2e3c32f9c1
* http://herolin.twbbs.org/entry/is-valid-TW-company-ID/

### License

MIT License
