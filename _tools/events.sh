#!/usr/bin/env bash
rbenv local 2.3.1
cd ~/Documents/git/mnylc.github.io/_tools
source .event_tokens.sh
git pull origin master
./getevents.rb
git add -A
git commit -m 'Update events (from script)'
git push origin master

