#!/bin/bash

CURRENT_BRANCH=$(git branch --show-current)

if [[ "$CURRENT_BRANCH" != "docusaurus" ]] ; then
  # Proceed with the build
  echo "✅ - Build can proceed"
  exit 1;

else
  # Don't build
  echo "🛑 - Build cancelled"
  exit 0;
fi
