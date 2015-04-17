class HomesController < ApplicationController
  def index
    @goggle = Mechanize.new
    @page = @goggle.get('http://search.aol.com/aol/webhome')
    @goggle_form = @page.form('CSBsearchForm1')
    @goggle_form.q = 'ruby mechanize'
    @page = @goggle.submit(@goggle_form)
  end
end
