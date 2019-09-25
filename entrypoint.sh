#!/bin/sh

# hub release create [-dpoc] [-a <FILE>] [-m <MESSAGE>|-F <FILE>] [-t <TARGET>] <TAG>
GIT_TAG=$(echo $GITHUB_REF | cut -d '/' -f 3)
echo "\$GITHUB_USER=$GITHUB_USER"
echo "\$GITHUB_REF=$GITHUB_REF"
echo "\$GIT_TAG=$GIT_TAG"
echo "\$RELEASE_ASSET_PATH=$RELEASE_ASSET_PATH"

hub version
hub release create --draft --attach $RELEASE_ASSET_PATH --message $GIT_TAG $GIT_TAG
hub edit --draft=false -m "" $GIT_TAG
