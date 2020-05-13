#!/bin/bash
for i in {1..3};
do
  echo " Result # $i :" >> sresults.txt
  date  >> sresults.txt
  python 1.py >> sresults.txt
  echo "====================================================================" >> sresults.txt
  sleep 60;
  git add sresults.txt
  git commit -m "Results by IoT Projects"
  git push origin master
done
