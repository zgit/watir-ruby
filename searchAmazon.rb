require_relative "page_object"
# catch args from terminal
browser = ARGV[0]
url = ARGV[1]

navigate(browser,url)
searchQuery = "watch"
searchInAmazon(searchQuery)
endSession
