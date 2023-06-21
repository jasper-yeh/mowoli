#!/bin/bash
echo "Running deploy tasks: bundle exec rake"
bundle exec rake db:migrate RAILS_ENV=development