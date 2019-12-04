require 'nokogiri'
require 'open-uri'
require 'pry'

class Rosecollector::Roses
    attr_accessor :name, :price, :url
    def self.all

    end

    def self.scrape_site
        doc = Nokogiri::HTML(open("https://www.edmundsroses.com/category/8"))

        # rose_names = []
        # rose_prices = []

        doc.each do |rose|
            rose = self.new
        names = doc.css("h2")
        #names.each do |name|
            n = rose.css("h2")
            rose.name = n.text.strip
            #rose_names << name.text.strip
        #end

        prices = doc.css(".price")
        #prices.each do |price|
            p = rose.css(".price")
            rose.price = p.text.strip
            #rose_prices << price.text.strip
        end

    end

    def self.scrape_roses
        roses = []
        roses << self.scrape_site
        roses
    end

end
