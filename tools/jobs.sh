#!/usr/bin/env bash

git pull origin master
rbenv local 2.3.1
./getjobscsv.rb
./getjobs.rb ./addajob.csv
git add -a
git commit -m "Update jobs from script."
git push origin master



