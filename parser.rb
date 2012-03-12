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
            puts "BUH"
            break
        elsif Pub_list.include? sing.to_s 
            puts sing.to_s
            current_pub = sing
        end
        if sing[1] == nil
            next
        else
            s = Book.new(sing[0], sing[1], sing[2], current_pub)
            puts s.name
            puts s.pub
        end
    end
file = nil
end


$DH = siteopen('http://www.previewsworld.com/shipping/newreleases.txt')

