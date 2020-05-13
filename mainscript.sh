#!/bin/bash
for i in {1..3};
do
  echo " Result # $i :" >> results.txt
  date  >> results.txt
  python gasrun.py >> results.txt
  echo "====================================================================" >> results.txt
  sleep 60;
  git add results.txt
  git commit -m "Results by IoT Projects"
  git push origin master
done
