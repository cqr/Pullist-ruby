require 'open-uri'


def siteopen(url)
file = open(url).read
current_pub = ''
for line in file
sing = line.strip.split("\t")
puts sing[1]
puts "TRY"
end
file = nil
end


$DH = siteopen('http://www.previewsworld.com/shipping/newreleases.txt')
