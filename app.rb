require 'mechanize'

agent = Mechanize.new

html = agent.get('http://www.kylottery.com/apps/draw_games/pick3/pick3_pastwinning.html').body

midday_results = Nokogiri::HTML(html).css('table table')[0].css('tbody')
night_results = Nokogiri::HTML(html).css('table table')[1].css('tbody')

print "\n**********\n#{midday_results}\n************\n"
print "\n**********\n#{night_results}\n************\n"
