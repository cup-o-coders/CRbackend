# class QueriesController < ApplicationController
#   def request
#     newCall = Yelp.new("san-diego")
#     render json: newCall.businesses
    
#   end
  
# end


require "http";

class YelpController < ApplicationController

   API_KEY = "05sFlV-Fgh1CHhru8NgMgiH5a7kmta0NVBR0D62VtRoJBnoJX3AqiPjdDiKv22wp0GHXj2fpeRKZM_WTWHnauSLDBE0yUu_Q6X9zhD6a5MAjJILF-3Gm8GXpMs1gW3Yx"

   # Constants, do not change these
   API_HOST = "https://api.yelp.com"
   SEARCH_PATH = "/v3/businesses/search"
   BUSINESS_PATH = "/v3/businesses/"
  #  SEARCH_LIMIT = 10

   def search
     url = "#{API_HOST}#{SEARCH_PATH}"
     yelpParams = {
       term: "coffee",
       location: "san-diego",
       open_now: true,
       limit: 10
     }

     response = HTTP.auth("Bearer #{API_KEY}").get(url, params: yelpParams)

     puts response

     response.parse
   end
end