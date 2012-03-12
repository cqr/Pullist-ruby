

class Book
    attr_accessor :date, :name, :price, :pub
    
    def initialize(date, name, price, pub) 
        @date = date
        @name = name
        @price = price
        @pub = pub
    end
end
