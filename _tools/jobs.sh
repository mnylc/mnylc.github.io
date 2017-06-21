#!/usr/bin/env bash

rbenv local 2.3.1
cd ~/Documents/git/mnylc.github.io/_tools
git pull origin master
./getjobscsv.rb
./getjobs.rb ./addajob.csv
git add -A
git commit -m "Update jobs (from script)"
git push origin master



