#!/bin/bash
grep -q 'total,future_date,future_link,co_1,co_1_count,co_2,co_2_count,co_3,co_3_count'
grep -qE '\d{1,4},\d{4}-\d{2}-\d{2} \d{1,2}:\d{1,2},https\:\/\/www\.meetup\.com\/.*\/,[a-z]{2},\d{1,4},[a-z]{2},\d{1,4},[a-z]{2},\d{1,4}'
