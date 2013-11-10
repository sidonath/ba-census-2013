#! /usr/bin/env ruby

require 'json'

feature_collection = {
  type: "FeatureCollection",
  features: []
}

ARGV.each do |filename|
  json = File.read(filename)
  geometry = JSON.parse(json)
  feature = { type: "feature", geometry: geometry }

  feature_collection[:features].push feature
end

puts feature_collection.to_json
