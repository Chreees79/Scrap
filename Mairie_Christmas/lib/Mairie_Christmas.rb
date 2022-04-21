require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(URI.open("https://www.annuaire-des-mairies.com/95/avernes.html"))

avernes_email = page.xpath('/html/body/div[1]/main/section[2]/div/table/tbody/tr[4]/td[2]')
avernes_name = page.xpath('/html/body/div[1]/main/section[1]/div/div/div/p[1]/strong[1]/a')

  arr1 = []
  arr2 = []

  avernes_email.each do |email|
  arr1 << avernes_email.text
end

avernes_name.each do |name|
  arr2 << avernes_name.text
end

my_hash = arr2.zip(arr1).to_h
  arr3 = my_hash.map {|name,email| {name => email}}

puts arr3

