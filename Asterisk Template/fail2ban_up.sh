#!/bin/bash

        if [ "$(sudo fail2ban-client ping |grep -o "pong")" == "pong" ]
        then
                echo "1"
        else
                echo "0"
        fi

