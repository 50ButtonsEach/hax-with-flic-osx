#!/usr/bin/env ruby

# the hue ruby gem is requried
# installation: sudo gem install hue

require 'hue'

# setup the client
client = Hue::Client.new

# get all lights
lights = client.lights

# switch all lights on
lights.each do |light|
  light.on!
end
