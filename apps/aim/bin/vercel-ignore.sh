#!/bin/sh -e

COMMiT_BRANCH="$VERCEL_GIT_COMMIT_REF"
TARGET_BRANCH="$VERCEL_TARGET_ENV"

if turbo ls --filter="[HEAD]..." | grep -qE '(^|/)aim$|apps/aim'; then
  echo "✅ aim or apps/aim was affected"
  exit 0
else
  echo "🚫 No changes in aim or apps/aim"
  exit 1
fi


