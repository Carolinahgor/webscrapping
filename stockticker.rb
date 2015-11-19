require 'httparty'
require 'nokogiri'


response = HTTParty.get('http://finance.yahoo.com/q?s=AAPL')

dom = Nokogiri::HTML(response.body)


my_span = dom.xpath("//span[@id='yfs_l84_aapl']").first

puts "$" + my_span.content
