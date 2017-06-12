#!/usr/bin/env bash
source .event_tokens.sh
git pull origin master
./getevents.rb
git add -A
git commit -m 'Update events (from script)'
git push origin master

