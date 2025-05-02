#!/bin/sh -e

# COMMIT_BRANCH="$VERCEL_GIT_COMMIT_REF"
# TARGET_BRANCH="$VERCEL_TARGET_ENV"
COMMIT_BRANCH="HEAD"
TARGET_BRANCH="main"

if turbo ls --filter=[$TARGET_BRANCH...$COMMIT_BRANCH]| grep -qE '(^|/)aim$|apps/aim'; then
  echo "✅ aim or apps/aim was affected"
  exit 0
else
  echo "🚫 No changes in aim or apps/aim"
  exit 1
fi


