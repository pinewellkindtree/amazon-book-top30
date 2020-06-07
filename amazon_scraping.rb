require 'mechanize'

agent = Mechanize.new
page = agent.get("https://www.amazon.co.jp/gp/bestsellers/books/ref=zg_bs_nav_0")
elements = page.search('body div div div div div div ol li span div span a div')

elements.each do |ele|
    puts ele.inner_text
end