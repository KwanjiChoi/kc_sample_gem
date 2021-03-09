require "kc_sample_gem/version"
require 'net/http'
require 'json'

module KcSampleGem
  class Error < StandardError; end
  # Your code goes here...


  BASE_URL = 'http://geoapi.heartrails.com/api/json'.freeze

  def self.greeting
    puts 'Hello Kwanji!'
  end

  def self.get_cities(prefecture)

    uri = URI.parse(BASE_URL)
    params = {
      method: 'getCities',
      prefecture: prefecture,
    }
    uri.query = URI.encode_www_form(params)
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = uri.scheme === "https"
    response = http.get(uri.request_uri)
    JSON.parse(response.body)['response']['location']
  end

end
