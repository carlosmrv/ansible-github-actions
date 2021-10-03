#!/bin/sh
echo "${DAY_OF_WEEK}"
echo "${USERNAME}"
python3 --version
ansible 127.0.0.1 -m ping --connection=local --become
