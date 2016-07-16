#!/usr/bin/env ruby

# the hue ruby gem is requried
# installation: sudo gem install hue

require 'hue'

# setup the client
client = Hue::Client.new

# get all lights
lights = client.lights

# switch all lights off
lights.each do |light|
  light.off!
end
