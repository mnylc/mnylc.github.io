#!/usr/bin/env bash

export RBENV_ROOT="${HOME}/.rbenv"
if [ -d "${RBENV_ROOT}" ]; then
    export PATH="${RBENV_ROOT}/bin:${PATH}"
    eval "$(rbenv init -)"
fi
rbenv local 2.3.1
cd ~/Documents/git/mnylc.github.io/_tools
git pull origin master
./getjobscsv.rb
./getjobs.rb ./addajob.csv
git add -A
git commit -m "Update jobs (from script)"
git push origin master



