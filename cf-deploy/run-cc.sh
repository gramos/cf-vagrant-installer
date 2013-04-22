#!/bin/bash
cd cloud_controller_ng
sudo bundle exec rake db:migrate
sudo bin/cloud_controller -d -m

