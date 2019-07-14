# You won't be yelled at, belittled, or scolded
# You won't be put on the spot without support
# There's nothing you can do to instantly fail or blow it
class ShoeSelector::Scraper
    def self.scrape
        doc = Nokogiri::HTML(open("https://www.rei.com/learn/expert-advice/rock-shoes.html"))
      categories = []
      #doc selection-from-site ("").each do |category_type|
      category_attributes = {}

      #binding.pry
 doc.css("#page-content > div:nth-child(3) > div > div > section:nth-child(7) > div.col-xs-12.vertical-push > h2").text
    end 
end 


