#!/usr/bin/env bash
#
# Start the docker instance for Udacity Nanocar
#
#

if [[ $OSTYPE =~ darwin ]]
then
    if ! docker version
    then
        open /Applications/Docker.app
    fi
fi
    
while ! docker run -it --rm -p 8888:8888 -v $(pwd):/src udacity/carnd-term1-starter-kit
do
    echo docker not yet up, waiting 5 seconds, hit CTRL-C to stop watiing
    sleep 5
done

