# require 'nokogiri'
# require 'open-uri'
# require 'pry'
# #require_relative './roses.rb'
# class Scraper 

#     def self.scape_roses
#         roses = []

#         roses << self.scrape_site

#         roses
#     end
    
#     def self.scrape_site
#         doc = Nokogiri::HTML(open("https://www.edmundsroses.com/category/8"))
#         # #names = doc.search("h2").text
#         #     doc.search("h2").each do |name|
#         #         n = name.text
#         #         names << n
#         #         # puts name.text.strip
#         #     end
#         # #prices = doc.search(".price").text
#         #     doc.search(".price").each do |price|
#         #         p = price.text
#         #         prices << p
#         #         # puts price.text.strip
#             rose = Rose.new
#             rose.name = doc.search("h2").text
#             rose.price = doc.search(".price").text

#             rose
#             end
#         binding.pry
#     end
# end
