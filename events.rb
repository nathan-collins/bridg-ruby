require 'rubygems'
require 'json'
require 'net/http'

class Events
  @record = nil
  def initialize()
    base_url = "https://s3-ap-southeast-2.amazonaws.com"
    url = "#{base_url}/bridj-coding-challenge/events.json"
    
    resp = Net::HTTP.get_response(URI.parse(url))

    @record = JSON.parse(resp.body) if resp.is_a?(Net::HTTPSuccess)
  end

  def all
    @record['events']
  end
end
