# You won't be yelled at, belittled, or scolded
# You won't be put on the spot without support
# There's nothing you can do to instantly fail or blow it
class ShoeSelector::Scraper
    @@base_url = "https://www.rei.com/learn/expert-advice"
    def self.scrape
        doc = Nokogiri::HTML(open(@@base_url + "/rock-shoes.html"))
    shoes_list = []


        doc.css(".container").each do |shoe_aspects|
            shoe = {} 
            shoe[:type] = doc.css("div.container h3")[1].text + doc.css(".container li")[3..7].text, doc.css("div.container h3")[2].text + doc.css(".container li")[8..12].text, doc.css("div.container h3")[3].text + doc.css(".container li")[13..17].text
            shoe[:closure] = doc.css("#ClimbingShoeFeatures p")[0].text,  doc.css("#ClimbingShoeFeatures p")[1].text, doc.css("#ClimbingShoeFeatures p")[2].text
            shoe[:material] = doc.css("#ClimbingShoeFeatures p")[4].text, doc.css("#ClimbingShoeFeatures p")[5].text,doc.css("#ClimbingShoeFeatures p")[6].text
            shoes_list << shoe
        end

        ShoeSelector::Shoe.create_from_collection(shoes_list)
 #doc.css("#search-results > ol > li:nth-child(1) > a > div > div.A6u5WwZLNPPJwzlJ > h2").text
    end 


end 

#Neutral:doc.css("div.container h3")[1].text

#neutral pros title:doc.css("div.container strong")[0]).text
#neutral pros list: doc.css("div.container li")[3..5].text
#neutral cons: doc.css("div.container strong")[1].text
#neutral shop: doc.css("div.container a")[3].text
#moderate: #page-content > div:nth-child(3) > div > div > section:nth-child(8) > div.col-xs-12.vertical-pull.vertical-push > h3
#moderate pros title: doc.css(#page-content > div:nth-child(3) > div > div > section:nth-child(7) > div.col-xs-12.col-sm-8.col-sm-pull-4 > p:nth-child(2) > strong).text

#moderate cons title: doc.css("#page-content > div:nth-child(3) > div > div > section:nth-child(8) > div.col-xs-12.col-sm-8.col-sm-pull-4 > p:nth-child(4) > strong").text
#STYLE LACE doc.css("#ClimbingShoeFeatures p")[0..2].text
#doc.css("div.container h3").text