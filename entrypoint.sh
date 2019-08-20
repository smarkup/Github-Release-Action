#!/bin/bash

# hub release create [-dpoc] [-a <FILE>] [-m <MESSAGE>|-F <FILE>] [-t <TARGET>] <TAG>

echo "github.com:\n- user: $GITHUB_USER\n  oauth_token: $GITHUB_TOKEN\n  protocol: https" > ~/.config/hub
unset GITHUB_TOKEN
unset GITHUB_USER

hub version
hub release create $*
