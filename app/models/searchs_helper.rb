module SearchsHelper
   def google(query)
    agent = Mechanize.new
    page = agent.get('http://google.com/')
    google_form = page.form('f')
    google_form.q = search
    page = agent.submit(google_form)

    page.links.each do |link|
      url = link.href.gsub(/.url\?q\=/,"" )
      url = url.gsub(/&sa=U&ei=(.*)/,"" )
      url = url.gsub(/.search?(.*)/,"" )
      url = url.gsub(/(.*)google.com(.*)/,"" )
      url = url.gsub(/(.*)webcache.(.*)/,"" )
      if url.length != 0
        link_to link.text, url
      end

