#!/bin/bash
set -eou pipefail

SCALELITE_REPO=aakatev
SCALELITE_TAG=v0

docker build \
  --target api \
  --tag $SCALELITE_REPO/scalelite:$SCALELITE_TAG-api \
  .

docker push $SCALELITE_REPO/scalelite:$SCALELITE_TAG-api