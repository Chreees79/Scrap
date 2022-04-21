require 'nokogiri'
require 'open-uri'

def first(url)
    
    html = URI.open("#{url}").read
    nokogiri_doc = Nokogiri::HTML(html)
    arr = []

    nokogiri_doc.search(".lientxt").each do |element|
        arr << element.attributes["href"].value.gsub("./", "/")
    end
    return arr
end

def change_url
  array = []
    urls = first("https://www.annuaire-des-mairies.com/val-d-oise.html")
    urls.each do |link|
        town_link = "https://www.annuaire-des-mairies.com#{link}"
    array << town_link
    end
    return array
end

def final_task(liens)
link_parse = []
email_villes = []
name_villes = []

liens.each do |lien|
  link_parse << Nokogiri::HTML(URI.open(lien))
end

link_parse.each do |lien|
  email_villes << lien.xpath('/html/body/div[1]/main/section[2]/div/table/tbody/tr[4]/td[2]').text
  name_villes << lien.xpath('/html/body/div[1]/main/section[1]/div/div/div/p[1]/strong[1]/a').text
end
  my_hash = name_villes.zip(email_villes).to_h
  arr3 = my_hash.map {|name,email| {name => email}}
  return arr3
end
puts final_task(change_url)
