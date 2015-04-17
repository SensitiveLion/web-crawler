class Home < ActiveRecord::Base
  def google(search)
    @agent = Mechanize.new
    @page = @agent.get('http://google.com/')
    @google_form = @page.form('f')
    @google_form.q = search
    @page = @agent.submit(@google_form)
  end
end
