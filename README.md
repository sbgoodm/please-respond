# Design and Development Challenge – 'Please Respond'

## Requirement
Create a program, in the language and tooling of your choice, which collects streaming RSVP data from Meetup.com, and outputs aggregate information about the observed Event RSVPs. Submit a pull request from your forked github repository and ensure the Travis CI job passes.

## Integration points
* Your program should connect to the Meetup.com RSVP HTTP data stream at http://stream.meetup.com/2/rsvps, and collect RSVPs to Meetup Events one minute.
  * Meetup RSVP reference: https://www.meetup.com/meetup_api/docs/stream/2/rsvps/
* This repository is integrated with Travis CI. Update the `.travis.yml` file with your own `install:` and `script:` commands to build and execute your solution respectively.
  * Travis intro tutorial: https://docs.travis-ci.com/user/tutorial/
  * Travis build lifecycle docs: https://docs.travis-ci.com/user/job-lifecycle/

https://travis-ci.com/sbgoodm/please-respond.svg?branch=master

## Validation
* Ensure your program collects data for exactly one minute. 
* Your program should generate the following data points from your one minute collection:
  * Total # of RSVPs received
  * Date of Event furthest into the future
  * URL for the Event furthest into the future
  * The number of RSVPs received per Event host-country. Use the top three highest RSVP counts for the program output below.  
* After computing the above data points, your program should output a CSV in the following format to STDOUT:
```
total,future_date,future_url,co_1,co_1_count,co_2,co_2_count,co_3,co_3_count
100,2019-04-17 12:00,https://www.meetup.com/UXSpeakeasy/events/258247836/,us,40,uk,18,jp,12
```
* The data above is provided as a sample in `program.sh` to produce a passing Travis CI build. Ensure that `validate.sh` is executed against the output of your solution. 

