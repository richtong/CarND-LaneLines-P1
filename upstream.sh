#!/usr/bin/env bash
#
# Sync with origin of upstream repo
#
#
REPO="${REPO:-"$(basename "$(pwd)")"}"
UPSTREAM="${UPSTREAM:-"upstream"}"
UPSTREAM_USER="${UPSTREAM_USER:-"Udacity"}"
UPSTREAM_REPO="${UPSTREAM_REPO:-"https://github.com/$UPSTREAM_USER/$REPO"}"

if ! git remote -v | grep -q "$UPSTREAM_REPO"
then
    git remote add "$UPSTREAM" "https://github.com/Udacity/$(basename $(pwd))"
    git fetch -p upstream
fi

cat <<-EOF

To sync with upstream:

   git fetch -p $UPSTREAM; git rebase $UPSTREAM/master 

EOF
