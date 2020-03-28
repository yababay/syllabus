#!/bin/bash

VIDEO=`ls -1 *.mkv | head -n 1`

rm audio.lst
ls -1 ../media/*.mp3 | grep mp3 | shuf | while read l; do echo "file '$l'" >> audio.lst; done

ffmpeg -y -i "$VIDEO" -f concat -safe 0 -i audio.lst -c copy -map 0:v:0 -map 1:a:0 -shortest output.mkv

