#Linkedin API
require 'rubygems'
require 'oauth'
require 'json'
require 'net/http'

# Change the following values to those provided on dev.twitter.com
# The consumer key identifies the application making the request.
# The access token identifies the user making the request.

consumer_key = OAuth::Consumer.new(
    "5ZJbbP3YK2sQzBcOrQyk8TSS5",
    "CvOE8HUHqAtRsTQbj174WKxuxGWTfuAUY7hHYKYi49bRNXkxRX")
access_token = OAuth::Token.new(
    "520412607-yKxNdTrY4pFFmndz5QTm2TL5Aq2DBjSxFnx01cE",
    "07LvSyFYmCEhpW1UHkrClhxyoKUe7hMO9GUpx2pYM")

# All requests will be sent to this server.
baseurl = "https://api.twitter.com"

# The verify credentials endpoint returns a 200 status if
# the request is signed correctly.
address = URI("#{baseurl}/1.1/account/verify_credentials.json")

# Set up Net::HTTP to use SSL, which is required by Twitter.
http = Net::HTTP.new address.host, address.port
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_PEER

# Build the request and authorize it with OAuth.
request = Net::HTTP::Get.new address.request_uri
request.oauth! http, consumer_key, access_token

# Issue the request and return the response.
http.start
response = http.request request

puts "The response status was #{response.code}"

Net::HTTP.get('https://api.twitter.com/1.1/followers/list.json')
#
# if response.code == '200' then
#
#   tweet = JSON.parse(response.body)
#   puts tweet
#
# end
