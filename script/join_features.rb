#! /usr/bin/env ruby

require 'json'

feature_collection = {
  type: "FeatureCollection",
  features: []
}

ARGV.each do |filename|
  json = File.read(filename)
  geometry = JSON.parse(json)
  feature = { type: "feature", geometry: geometry, id: filename[/(\w+)\.(\w+)\Z/, 1] }
  feature_collection[:features].push feature
end

puts feature_collection.to_json
