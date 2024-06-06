class ChargingStationService
  include HTTParty
  base_uri 'https://api.openchargemap.io/v3/poi'
  API_KEY = '72ae38d6-e258-4e9e-b9cc-04f55cb83dac'


  def self.get_stations(latitude, longitude)
   #response = get("/?output=json&latitude=#{latitude}&longitude=#{longitude}&distance=10&distanceunit=KM",headers: { "Authorization" => "Bearer #{API_KEY}" })#
  response = get ("/?output=json&countrycode=TR&maxresults=500&compact=true&verbose=false&key=72ae38d6-e258-4e9e-b9cc-04f55cb83dac")


    response.parsed_response
  end
end
