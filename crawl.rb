require 'rubygems'
require 'mechanize'
require "pry"

agent = Mechanize.new
page = agent.get('http://bing.com')
bing_form = page.form()
bing_form.q = 'ruby mechanize'
page = agent.submit(bing_form)
page.links.each do |link|
  puts link.href.gsub(/^(?!http(.*)).*/,"")
end
