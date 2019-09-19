#!/usr/bin/env ruby

require 'time'
require 'uri'
require 'net/http'
require 'json'
require 'yaml'

eb_token = ENV['EVENTBRITE_TOKEN']

# events data file.
fname = '../_data/events.yml'
eventfile = File.open(fname, 'w')

# build the uri and then get the data.
eb_uri_str = 'https://www.eventbriteapi.com/v3/organizers/8929654067/events/?status=live&only_public=true&token=' + eb_token
uri = URI(eb_uri_str)

resp = Net::HTTP.get(uri)
if resp.is_a?(Net::HTTPSuccess)
  j = JSON.parse(resp)
  l = []
  wanted_keys = %w[start description name url]
  j['events'].each do |ev|
    h = ev.select { |key, _| wanted_keys.include? key }
    h['description']['html'].gsub!('<P><BR></P>', '')
    h['description']['html'].gsub!('<HR>', '')
    h['description']['html'].gsub('<img.*cleardot.gif.*/>', '')
    l.push(h)
  end
  # Only do work if have events. If empty keep the old ones?
  if l.any?
    # YAMLize
    l.sort_by! { |h| h['start']['utc'] }
    y = l.to_yaml
    # write to file and done.
    eventfile.puts y
  end  
end
eventfile.close
