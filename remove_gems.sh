#!/bin/sh

for gem in $(gem list --no-versions); do
  echo "working on $gem"
  gem uninstall $gem
done
