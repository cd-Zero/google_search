#allows for rest-client file to be used
require 'rest-client'
#asks user for data
puts "What would you like to search for?"

#stores input of search query into variable search
search = gets.chomp

search_google 	=	"https://www.google.com/search?q=#{search}"

search_yahoo 	= 	"https://search.yahoo.com/search;_ylt=A0LEVxt7AAhYVfYATJOl87UF;_ylc=X1MDOTU4MTA0NjkEX3IDMgRmcgN5bwRncHJpZANEbGhyNzlNalJVYVNnT1FKWG14ZmZBBG5fcnNsdAMwBG5fc3VnZwMxMARvcmlnaW4Dc2VhcmNoLnlhaG9vLmNvbQRwb3MDMARwcXN0cgMEcHFzdHJsAwRxc3RybAMyBHF1ZXJ5A3lvBHRfc3RtcAMxNDc2OTE5NDI5?p=#{search}"

search_bing 	= 	"https://www.bing.com/search?q=#{search}"


#stores input of url -note variable search is used at end of url- into variable response
response =  [RestClient.get search_google,RestClient.get search_yahoo,RestClient.get search_bing]
 
response do |respond| 

	puts""
	puts "response code :"
	puts respond.code
	
	puts ""
	puts "response header :"
	puts response.header
	
	puts ""
	puts "response cookie :"
	puts response.cookie
	
	puts ""
	puts "response history:"
	puts response.history

end