require 'mechanize'

agent = Mechanize.new
page = agent.get("https://www.amazon.co.jp/gp/bestsellers/books/")
elements = page.search('body div div div div div div ol li span div span a div')
elements1 = elements.each_slice(2).map(&:last)

elements1.first(30).each_with_index do |ele,i|
    print "第#{i+1}位:" + ele.inner_text.to_s
end