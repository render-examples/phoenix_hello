#!/usr/bin/env bash

# Initial setup
mix deps.get --only prod
MIX_ENV=prod mix compile

# Compile assets
cd assets && npm install && npm run deploy && cd ..

mix phx.digest
