#!/bin/sh

# hub release create [-dpoc] [-a <FILE>] [-m <MESSAGE>|-F <FILE>] [-t <TARGET>] <TAG>
echo "\$GITHUB_USER=$GITHUB_USER"
echo "\$GIT_TAG=$GIT_TAG"
echo "\$RELEASE_ASSET_PATH=$RELEASE_ASSET_PATH"

hub version
hub release create --draft --attach $RELEASE_ASSET_PATH --message $GIT_TAG $GIT_TAG
hub release edit --draft=false -m "" $GIT_TAG
