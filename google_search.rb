#allows for rest-client file to be used
require 'rest-client'
#asks user for data
puts "What would you like to search for?"

#stores input of search query into variable search
search 			=  	gets.chomp
#search turned into string and put in url to complete search
search_google 	=	"https://www.google.com/search?q=#{search}"

search_yahoo 	= 	"https://search.yahoo.com/search;_ylt=A0LEVxt7AAhYVfYATJOl87UF;_ylc=X1MDOTU4MTA0NjkEX3IDMgRmcgN5bwRncHJpZANEbGhyNzlNalJVYVNnT1FKWG14ZmZBBG5fcnNsdAMwBG5fc3VnZwMxMARvcmlnaW4Dc2VhcmNoLnlhaG9vLmNvbQRwb3MDMARwcXN0cgMEcHFzdHJsAwRxc3RybAMyBHF1ZXJ5A3lvBHRfc3RtcAMxNDc2OTE5NDI5?p=#{search}"

search_bing 	= 	"https://www.bing.com/search?q=#{search}"


#!!! clearify what RestClient.get does !!!!
#stores value ofRestClient.get into search engines names 
google 	= 	RestClient.get search_google
yahoo 	= 	RestClient.get search_yahoo
bing 	= 	RestClient.get search_bing

#creates array for RestClient to go through
response =  [google,yahoo,bing]

# creates loop using each method and outputs response attached to code, headers,cookies methods
response.each do |respond| 

	puts""
	puts "response code :"
	puts respond.code
	puts ""
	puts "response header :"
	puts respond.headers
	puts ""
	puts "response cookie :"
	puts respond.cookies
end