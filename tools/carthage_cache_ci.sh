#!/bin/sh

set -e

echo "Checking Carthage dependencies"

if [ ! -f Carthage/CachedCartfile.resolved ] || [ $(diff Cartfile.resolved Carthage/CachedCartfile.resolved | wc -l) -gt 0 ]
then
  echo "Building using Carthage"
  rm -rf Carthage
  bundle exec fastlane carthageci
  cp Cartfile.resolved Carthage/CachedCartfile.resolved
else
  echo "Using cached Frameworks"
fi
