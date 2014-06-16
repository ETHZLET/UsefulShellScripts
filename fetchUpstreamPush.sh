#!/bin/sh
git fetch upstream
for BRANCH in MOODLE_19_STABLE MOODLE_20_STABLE MOODLE_21_STABLE MOODLE_22_STABLE MOODLE_23_STABLE MOODLE_24_STABLE MOODLE_25_STABLE MOODLE_26_STABLE master; do
git push origin refs/remotes/upstream/$BRANCH:$BRANCH
done