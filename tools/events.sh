#!/usr/bin/env bash
rbenv local 2.3.1
cd ~/Documents/mnylc.github.io/tools
source .event_tokens.sh
git pull origin master
./getevents.rb
git add -A
git commit -m 'Update events (from script)'
git push origin master

