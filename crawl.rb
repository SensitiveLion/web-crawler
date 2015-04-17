require 'rubygems'
require 'mechanize'
require "pry"

agent = Mechanize.new
page = agent.get('http://search.aol.com/aol/webhome')
bing_form = page.form('CSBsearchForm1')
bing_form.q = 'ruby mechanize'
page = agent.submit(bing_form)
page.links.each do |link|
  puts link.href
end
