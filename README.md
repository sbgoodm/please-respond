# Design and Development Challenge – 'Please Respond'

## Requirement
Create a program, in the language and tooling of your choice, which collects streaming data from Meetup.com, and outputs aggregate information about the observed records. Submit a pull request from your forked github repository and ensure the Travis CI job passes.

## Integration points
* Your program should connect to the Meetup.com RSVP HTTP data stream at http://stream.meetup.com/2/rsvps, and collect RSVPs for 1 one minute.
  * Meetup RSVP reference: https://www.meetup.com/meetup_api/docs/stream/2/rsvps/
* This repository is integrated with Travis CI. Update the `.travis.yml` file with your `install:` and `script:` commands, to build and execute your solution respectively.


## Validation Test Cases
* Ensure your program collects data for exactly 1 minute.
* After running for 1 minute, your program should output the following to STDOUT:
```
Total # of RSVPs received: ${RSVPS_CAPTURED}
Date of Event furthest into the future: ${EVENT_DATE_IN_YYYY-mm-dd hh:mm_FORMAT}
Link to Event furthest into the future: ${MEETUP_EVENT_URL}
Top 3 countries:
  * ${COUNTRY 1} - ${NUMBER_RSVPS}
  * ${COUNTRY 2} - ${NUMBER_RSVPS}
  * ${COUNTRY 3} - ${NUMBER_RSVPS}
```

