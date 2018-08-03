# class Yelp
#     include HTTParty
#     base_uri 'https://api.yelp.com/v3/'

#     ## THIS WORKS!!! Refactoring to put term and location in
#     def initialize(location)
#       @options = { query: { term: "coffee", location: location, limit: 1 }, headers: { "Authorization" => "Bearer 05sFlV-Fgh1CHhru8NgMgiH5a7kmta0NVBR0D62VtRoJBnoJX3AqiPjdDiKv22wp0GHXj2fpeRKZM_WTWHnauSLDBE0yUu_Q6X9zhD6a5MAjJILF-3Gm8GXpMs1gW3Yx"} }
#     end
  
#     def businesses
#       self.class.get("/businesses/search", @options)
#     end

#     # This isn't working
#           def initialize()
#             @auth = { headers: { "Authorization" => "Bearer 05sFlV-Fgh1CHhru8NgMgiH5a7kmta0NVBR0D62VtRoJBnoJX3AqiPjdDiKv22wp0GHXj2fpeRKZM_WTWHnauSLDBE0yUu_Q6X9zhD6a5MAjJILF-3Gm8GXpMs1gW3Yx"} }
#           end
          
#           def businesses(term, location)
#             @options = { query: { term: term, location: location } }
#             self.class.get("/businesses/search", @options)
#           end
#   end