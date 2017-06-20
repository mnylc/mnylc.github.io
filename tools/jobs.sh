#!/usr/bin/env bash

rbenv local 2.3.1
cd ~/Documents/mnylc.github.io/tools
git pull origin master
./getjobscsv.rb
./getjobs.rb ./addajob.csv
git add -A
git commit -m "Update jobs (from script)"
git push origin master



