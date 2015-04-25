require "pry"
require "nokogiri"
require 'open-uri'
cool_thing = []

500.times do
  doc = Nokogiri::HTML(open("https://en.wikipedia.org/wiki/Special:Random"))
  cool_thing << doc.css('.firstHeading').text
  print "."
end
binding.pry
