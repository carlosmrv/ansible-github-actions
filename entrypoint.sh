#!/bin/sh
echo "${DAY_OF_WEEK}"
echo "${USERNAME}"
ansible -i localhost -m ping
