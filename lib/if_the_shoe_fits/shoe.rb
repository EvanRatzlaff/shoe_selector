class ShoeSelector::Shoe
    attr_accessor :type, :description, :material

        @@all = []

        def initialize(attributes)
            attributes.each do |key, value|
                self.send("#{key}=", value)
       
            end
        end 
        def self.create(attributes)
            self.new(attributes).tap do |shoe| shoe.save
                shoe 
        end
        end

        def self.create_from_collection(array)
            array.each do |attributes|
                self.create(attributes)
            end
        end

        def save
            self.class.all.push(self)
        end 

        def self.all
            @@all
        end
    end 