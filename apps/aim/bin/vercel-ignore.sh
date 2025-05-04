#!/bin/sh -e

COMMIT_BRANCH="$VERCEL_GIT_COMMIT_REF"
# TARGET_BRANCH="$VERCEL_TARGET_ENV"
TARGET_BRANCH="main"

# COMMIT_BRANCH="HEAD"
# TARGET_BRANCH="main"

echo "Commit branch:  $COMMIT_BRANCH"
echo "Target branch:  $TARGET_BRANCH"

echo "🔁 Fetching $TARGET_BRANCH..."

REPO_URL="https://github.com/$VERCEL_GIT_REPO_OWNER/$VERCEL_GIT_REPO_SLUG.git"
echo $REPO_URL

git branch

ls -a

if turbo ls --filter=...[$TARGET_BRANCH...$COMMIT_BRANCH]| grep -qE '(^|/)aim$|apps/aim'; then
  echo "✅ Build can proceed. AIM or apps/aim was affected"
  exit 1
else
  echo "🚫 Build cancelled. No changes in aim or apps/aim"
  exit 0
fi
