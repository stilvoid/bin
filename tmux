#!/bin/bash

# If there are any sessions that aren't attached, attach to the first one
# Otherwise, start a new session

for line in $(/usr/bin/tmux ls -F "#{session_name},#{session_attached}"); do
    name=$(echo $line | cut -d ',' -f 1)
    attached=$(echo $line | cut -d ',' -f 2)

    if [ $attached -eq 0 ]; then
        /usr/bin/tmux attach -t $name
        exit
    fi
done

/usr/bin/tmux -u
