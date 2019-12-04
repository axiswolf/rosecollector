require 'nokogiri'
require 'open-uri'
require 'pry'

class Rosecollector::Roses
    attr_accessor :name, :price, :url, :description

    def self.scrape_site
        doc = Nokogiri::HTML(open("https://www.edmundsroses.com/category/8"))
        @@roses = []
        doc.css("section.product").each do |r|
            rose = self.new
            rose.name = r.css("h2").text.strip
            rose.price = r.css(".price").text.strip
            rose.url = "https://www.edmundsroses.com" + r.css(".image a").attr("href")
                doc2 = Nokogiri::HTML(open(rose.url))
                rose.description = doc2.css("div.prod_desc").text.strip
            @@roses << rose
        end
        @@roses
    end

end
