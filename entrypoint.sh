#!/bin/bash

# hub release create [-dpoc] [-a <FILE>] [-m <MESSAGE>|-F <FILE>] [-t <TARGET>] <TAG>
# hub release create $*
MESSAGE=$*
hub release create -m ${MESSAGE} $(date +%Y%m%d%H%M%S)
