require 'nokogiri'
require 'open-uri'
require 'pry'

class Rosecollector::Roses
    attr_accessor :name, :price, :url, :description

    def self.scrape_site
        doc = Nokogiri::HTML(open("https://www.edmundsroses.com/category/8"))

        roses = []
        rose_count = 0

        doc.css("section.product").each do |r|
            rose = self.new
            n = r.css("h2")
            rose.name = n.text.strip

            p = r.css(".price")
            rose.price = p.text.strip

            rose.url = "https://www.edmundsroses.com" + r.css(".image a").attr("href")
                doc2 = Nokogiri::HTML(open(rose.url))
                rose.description = doc2.css("div.prod_desc").text.strip
            roses << rose
            rose_count += 1
        end
        roses
        rose_count
    end

end
