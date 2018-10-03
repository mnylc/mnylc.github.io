#!/usr/bin/env ruby

require 'time'
require 'uri'
require 'net/http'
require 'json'
require 'yaml'

eb_token = ENV['EVENTBRITE_TOKEN']
meetup_token = ENV['MEETUP_TOKEN']

# events data file.
fname = '../_data/events.yml'
eventfile = File.open(fname, 'w')

# get the time for Eventbrite URL.
t = Time.new.xmlschema
tt = t.to_s[0..-7] + 'Z'

# build the uri and then get the data.
eb_uri_str = 'https://www.eventbriteapi.com/v3/organizers/8929654067/events/?status=live&only_public=true&token=' + eb_token
# eb_uri_str = 'https://www.eventbriteapi.com/v3/events/search/?organizer.id=8929654067&start_date.range_start='
# eb_uri_str += tt + '&token=' + eb_token
uri = URI(eb_uri_str)

resp = Net::HTTP.get(uri)

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

# do the same for meetup.
meetup_uri_str = 'https://api.meetup.com/self/events'
meetup_uri_str += '?photo-host=public&page=20'
meetup_uri_str += '&status=upcoming&only=name,description,link,time&key='
meetup_uri_str += meetup_token
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
  ev['url'] = ev['link']
  l.push(ev)
end

# YAMLize
l.sort_by! { |h| h['start']['utc'] }
y = l.to_yaml

# write to file and done.
eventfile.puts y
eventfile.close
