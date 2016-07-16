#!/usr/bin/env ruby

# the hue ruby gem is requried
# installation: sudo gem install hue

require 'hue'

# setup the client
client = Hue::Client.new

# get all lights
lights = client.lights

bridge = client.bridge

# switch the current state of all lights
lights.each do |light|
  if light.on?
    light.off!
  else
    light.on!
  end
end
