#!/usr/bin/env bash
source .event_tokens.sh
git pull origin master
rbenv local 2.3.1
./getevents.rb
git add -A
git commit -m 'Update events (from script)'
git push origin master

