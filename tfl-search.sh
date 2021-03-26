#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Search TfL Journey
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🚇
# @raycast.packageName Web Searches
# @raycast.argument1 { "type": "text", "placeholder": "to", "percentEncoded": true }
# @raycast.argument2 { "type": "text", "placeholder": "from", "optional": true, "percentEncoded": true }

# Documentation:
# @raycast.description Search the TfL journey finder website for directions.
# @raycast.author Jono Hewitt
# @raycast.authorURL https://github.com/jonohewitt

# Set your default starting location here, using + for spaces:
defaultFrom="Charing+Cross+(London)"

to=$1
from=$2

if [ -z $from ]; then
   from=$defaultFrom
fi

open "https://tfl.gov.uk/plan-a-journey/results?InputFrom=$from&InputTo=$to"
