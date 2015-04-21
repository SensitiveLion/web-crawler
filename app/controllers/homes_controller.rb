class HomesController < ApplicationController
  def index
    @goggle = Mechanize.new
    @page = @goggle.get('http://www.wow.com/')
    @goggle_form = @page.form('SearchBoxForm')
    @goggle_form.q = 'ruby mechanize'
    @page = @goggle.submit(@goggle_form)
  end
end
