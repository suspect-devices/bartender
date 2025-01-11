#!/bin/sh
# Lots of hard coded foo here. This is very digithink.com specific.
{   echo "====================== Start Build `date`==================="
    cd /var/www/bartender/repo
    git pull && mkdocs build
    rm -rf ../osite
    mv ../site ../osite
    mv site ..
    echo "=========================== Done: `date` ===================="
}| tee logs/pullandbuild.out
