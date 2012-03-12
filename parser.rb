require 'open-uri'

class Book
    attr_accessor :date, :name, :price, :pub
    
    def initialize(date, name, price, pub) 
        @date = date
        @name = name
        @price = price
        @pub = pub
    end
end

$pub_list = ['DARK HORSE COMICS', 
            'DC COMICS',    
            'IDW PUBLISHING',   
            'IMAGE COMICS',
            'MARVEL COMICS',
            'COMICS'
            ]


def siteopen(url)
file = open(url).read
$current_pub = ''
    for line in file
    $sing = line.strip.split("\t")
        if $sing.size < 3 
            $current_pub = $sing
        else
            s = Book.new($sing[0], $sing[1], $sing[2], $current_pub)
            puts s.name 
            puts s.pub
        end
    end
file = nil
end


$DH = siteopen('http://www.previewsworld.com/shipping/newreleases.txt')

