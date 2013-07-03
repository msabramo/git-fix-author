#!/bin/sh

old_email="$1"
new_email="$2"

read -r -d '' script <<'__SCRIPT__'
if test "$GIT_AUTHOR_EMAIL" = "@@OLD_EMAIL@@"; then
    GIT_AUTHOR_EMAIL=@@NEW_EMAIL@@
    export GIT_AUTHOR_EMAIL
fi
if test "$GIT_COMMITTER_EMAIL" = "@@OLD_EMAIL@@"; then
    GIT_COMMITTER_EMAIL=@@NEW_EMAIL@@
    export GIT_COMMITTER_EMAIL
fi
__SCRIPT__
script=$(echo "$script" | sed -e "s/@@OLD_EMAIL@@/$old_email/" -e "s/@@NEW_EMAIL@@/$new_email/")

eval git filter-branch --env-filter "'""$script""'" -- --all
