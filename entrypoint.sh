#!/bin/sh
echo "${DAY_OF_WEEK}"
echo "${USERNAME}"
ansible localhost -m ping
