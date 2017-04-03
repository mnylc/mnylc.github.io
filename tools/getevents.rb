#!/usr/bin/env ruby

require 'time'
require 'uri'
require 'net/http'
require 'JSON'
require 'yaml'

eb_token = ENV['EVENTBRITE_TOKEN']
meetup_token = ENV['MEETUP_TOKEN']

# events data file.
fname = 'events.yml'
eventfile = File.open(fname, 'w')

# get the time for Eventbrite URL.
t = Time.new.xmlschema
tt = t.to_s[0..-7] + 'Z'

# build the uri and then get the data.
eb_uri_str = 'https://www.eventbriteapi.com/v3/events/search/?organizer.id=8929654067&start_date.range_start='
eb_uri_str += tt + '&token=' + eb_token
uri = URI(eb_uri_str)

resp = Net::HTTP.get(uri)

j = JSON.parse(resp)

# do the same for meetup.
meetup_uri_str = 'https://api.meetup.com/self/events?photo-host=public&page=20&sig_id=221728975&status=upcoming&only=name,description,link,time,utc_offset&key=' + meetup_token
uri = URI(meetup_uri_str)

resp = Net::HTTP.get(uri)

k = JSON.parse(resp)

# normalize the Meetup entries to Eventbrite. Eventbrite was here first.

k.each do |ev|
  ev['start'] = {}
  start_time = Time.at(ev['time'] / 1000)
  ev['start']['utc'] = start_time.to_s
  ev['start']['local'] = start_time.to_s
  ev_desc = ev['description']
  ev['description'] = {}
  ev['description']['html'] = ev_desc
  ev_name = ev['name']
  ev['name'] = {}
  ev['name']['html'] = ev_name
  ev['url'] =ev['link']
  j['events'].push(ev)
end

# YAMLize
j['events'].sort_by! { |h| h['start']['utc'] }
y = j['events'].to_yaml

# write to file and done.
eventfile.puts y
eventfile.close
