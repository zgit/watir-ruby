require "watir-webdriver"
#now with travisCI
# for headless testing (not same as phantomjs)
# requires unix / linux env
#require 'headless'

def self.navigate(browser,url)
	if browser.strip == "headless" then
		headless = Headless.new
		headless.start
		$browser = Watir::Browser.start url
	else
	 	$browser = Watir::Browser.new :"#{browser}"
	 	$browser.goto url
	end
end

def self.searchInAmazon(searchQuery)
      $browser.text_field(:id => "twotabsearchtextbox").when_present(20).set "#{searchQuery}"
      $browser.input(:value => "Go").click
      $browser.span(:class => "a-color-state a-text-bold").wait_until_present(20)
      outputQueryStr = $browser.span(:class => "a-color-state a-text-bold").text
      # outputQueryStr return "watch"
      outputQueryStr = outputQueryStr.gsub(/["]/,'')
      if outputQueryStr.strip == searchQuery then
        puts "search results are working"
      else
        puts "search results are broken."
      end
end

def self.endSession
    $browser.quit
end
