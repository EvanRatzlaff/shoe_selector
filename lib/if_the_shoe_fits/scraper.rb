
class ShoeSelector::Scraper
    @@base_url = "https://www.rei.com/learn/expert-advice"
    def self.scrape
        doc = Nokogiri::HTML(open(@@base_url + "/rock-shoes.html"))
    shoes_list = []


        doc.css("section.row.row-flex")[0..2].each do |div|
            shoe = {} 
            shoe[:type] = div.css("h3").text
            shoe[:description] = div.css("p").text
                shoes_list << shoe
            end
        ShoeSelector::Shoe.create_from_collection(shoes_list)
    end 


end 

