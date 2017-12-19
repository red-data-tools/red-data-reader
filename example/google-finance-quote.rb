#!/usr/bin/env ruby

require "data-reader"

reader = DataReader::GoogleFinanceQuoteReader.new(["AMZN", "GOOG"])
reader.each do |entry|
  p [entry.name, entry.change_percent, entry.last, entry.time]
  # ["AMZN", 0.09, 1039.87, Time.parse("2017-07-25T16:00:00Z")]
  # ["GOOG", -3.02, 950.70, Time.parse("2017-07-25T16:00:00Z")]
end
