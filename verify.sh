#!/bin/bash
grep -P '\d{1,4},\d{4}-\d{2}-\d{2} \d{1,2}:\d{1,2},https\:\/\/www\.meetup\.com\/.*\/,[a-z]{2},\d{1,4},[a-z]{2},\d{1,4},[a-z]{2},\d{1,4}' 

if [ $? -eq 0 ]
then
  echo "Data format matches!"
  exit 0
else
  echo "Data format does not match expectation."
  exit 1
fi
