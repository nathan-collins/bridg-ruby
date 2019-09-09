#!/usr/bin/env ruby
load "events.rb"

puts "Remaining Events with available seats"

eventsResults = Events.new()
data = eventsResults
data.all.each do | event |
  available.select{ |event.available_seats| event.available_seats > 0}
  available.sortby{ |event.date| event.date}
  puts "#{available['name']} ($#{available[price]}) at #{available[venue]}"
end

events = nil
