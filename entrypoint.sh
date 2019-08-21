#!/bin/sh

# hub release create [-dpoc] [-a <FILE>] [-m <MESSAGE>|-F <FILE>] [-t <TARGET>] <TAG>
echo "\$GITHUB_USER=$GITHUB_USER"
echo "\$GITHUB_REF=$GITHUB_REF"

hub version
hub release create $*
