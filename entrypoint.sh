#!/bin/sh

# hub release create [-dpoc] [-a <FILE>] [-m <MESSAGE>|-F <FILE>] [-t <TARGET>] <TAG>
echo "\$GITHUB_USER=$GITHUB_USER"
echo "\$GIT_TAG=$GIT_TAG"
echo "\$RELEASE_ASSET_PATH=$RELEASE_ASSET_PATH"
echo "\$PUBLISH_RELEASE=$PUBLISH_RELEASE"

hub version
echo "Creating draft release"
hub release create --draft --attach $RELEASE_ASSET_PATH --message $GIT_TAG $GIT_TAG

if [ "$PUBLISH_RELEASE" = "true" ]; then
  echo "Publishing release."
  hub release edit --draft=false -m "" $GIT_TAG
else
  echo "PUBLISH_RELEASE is not set to true. Not publishing."
fi
