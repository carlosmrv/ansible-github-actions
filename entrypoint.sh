#!/bin/sh
echo "${DAY_OF_WEEK}"
echo "${USERNAME}"
ansible 127.0.0.1 -m ping
