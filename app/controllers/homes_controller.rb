class HomesController < ApplicationController
  def index
    @bing = Mechanize.new
    @page = @bing.get('https://bing.com/')
    @bing_form = @page.form()
    @bing_form.q = 'ruby mechanize'
    @page = @bing.submit(@bing_form)
  end
end
