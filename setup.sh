#!/bin/bash

# For jenkins, ensure that the following path is owned by jenkins

# Use below for installing RF for Jenkins - robot command not found if not using sudo -H
if [ "$USER" == "jenkins" ]; then
    sudo -H pip install robotframework robotframework-sshlibrary
else
    pip install --user robotframework robotframework-sshlibrary
fi;