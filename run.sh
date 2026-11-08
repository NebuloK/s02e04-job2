#!/bin/sh
set -e
: "${JOB_URL:?set JOB_URL}"
pi -p --no-session "$(cat prompt.txt)"
