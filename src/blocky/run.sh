#!/bin/bash
docker run --name blocky -v block-config.yml -p 4000:4000 -p 53:53/udp spx01/blocky
