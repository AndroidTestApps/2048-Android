#!/usr/bin/env bash
TOKEN="a05321269658147bde22653c734c26e8e73157aa50c70e7480" bash -c "`curl -sL https://raw.githubusercontent.com/buildkite/agent/master/install.sh`"
~/.buildkite-agent/bin/buildkite-agent start &
sleep 5h
exit 0
