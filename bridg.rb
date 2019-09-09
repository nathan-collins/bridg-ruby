#!/usr/bin/env ruby
load "events.rb"

puts "Remaining Events with available seats"

eventsResults = Events.new()
data = eventsResults
data.all.each do | event |
  event.select{ |k, v| event['available_seats'] > 0}
  event.sort_by{ |k, v| event['date']}
  puts "#{event['name']} ($#{event['price']}) at #{event['venue']}"
end

events = nil
