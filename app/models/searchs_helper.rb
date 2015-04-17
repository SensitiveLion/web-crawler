module SearchsHelper
   def self.search_helper(query)
    @agent = Mechanize.new
    @page = @agent.get('http://google.com/')
    @google_form = @page.form('f')
    @google_form.q = search
    @page = @agent.submit(@google_form)
