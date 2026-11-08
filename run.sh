#!/bin/sh
set -e
: "${JOB_URL:?set JOB_URL}"
pi -p --no-session --provider openrouter --model "${PI_MODEL:-anthropic/claude-sonnet-4.5}" "$(cat prompt.txt)"
