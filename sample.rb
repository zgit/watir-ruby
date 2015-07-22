require "watir-webdriver"

browser = Watir::Browser.new
browser.goto "www.amazon.com"
browser.text_field(:id => "twotabsearchtextbox").set "watch"
browser.input(:value => "Go").click
browser.quit
