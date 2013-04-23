#!/bin/bash
cd dea_ng
foreman start &
bin/dea config/dea.yml
run
