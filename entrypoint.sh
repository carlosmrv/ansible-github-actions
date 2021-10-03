#!/bin/sh
echo "${DAY_OF_WEEK}"
echo "${USERNAME}"
echo "Log level: ${{ github.event.inputs.PROPERTIES }}"
echo "Tags: ${{ github.event.inputs.tags }}"
python3 --version
ansible 127.0.0.1 -m ping --connection=local
