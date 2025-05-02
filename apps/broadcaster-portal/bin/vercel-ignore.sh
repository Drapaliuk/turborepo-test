#!/bin/sh -e

COMMIT_BRANCH="$VERCEL_GIT_COMMIT_REF"
# TARGET_BRANCH="$VERCEL_TARGET_ENV"
TARGET_BRANCH="main"

# COMMIT_BRANCH="HEAD"
# TARGET_BRANCH="main"

echo "Commit branch:  $COMMIT_BRANCH"
echo "Target branch:  $TARGET_BRANCH"

echo "🔁 Fetching $TARGET_BRANCH..."
git fetch origin $TARGET_BRANCH

if turbo ls --filter=...[$TARGET_BRANCH...$COMMIT_BRANCH]| grep -qE '(^|/)broadcaster-portal$|apps/broadcaster-portal'; then
  echo "✅ Build can proceed. broadcaster-portal was affected"
  exit 1
else
  echo "🚫 Build cancelled. No changes in broadcaster-portal"
  exit 0
fi
