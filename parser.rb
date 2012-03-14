require 'open-uri'
require 'classes'

Pub_list = ['DARK HORSE COMICS', 
            'DC COMICS',    
            'IDW PUBLISHING',   
            'IMAGE COMICS',
            'MARVEL COMICS',
            'COMICS'
            ]


def siteopen(url)
file = open(url).read
current_pub = ''
    for line in file
    sing = line.strip.split("\t")
        if sing.to_s == "MAGAZINES"
            break
        elsif Pub_list.include? sing.to_s 
            pub = Publisher.new
            pub.name = sing.to_s
            pub.save 
            current = pub
            
        end
        if sing[1] == nil
            next
        else
            s = Book.new(:date => sing[0], :name => sing[1], :price => sing[2], :publisher => current )
            puts s.name
            puts s.publisher
            s.save
        end
end
puts Publisher.all.map {|pub| pub.name}
file = nil
end


$DH = siteopen('http://www.previewsworld.com/shipping/newreleases.txt')

