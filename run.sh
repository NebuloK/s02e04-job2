#!/bin/bash
: "${JOB_URL:?set JOB_URL}"
echo "worker start"
pi -p --no-session --provider openrouter --model "${PI_MODEL:-anthropic/claude-sonnet-4.5}" "$(cat prompt.txt)" > out.txt 2> err.txt
code=$?
echo "pi exit code: $code"
echo "--- stdout ---"; cat out.txt
echo "--- stderr ---"; cat err.txt
exit $code
