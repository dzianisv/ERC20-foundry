#!/bin/sh
set -eu
forge script --chain base script/TokenDeploy.s.sol:TokenDeploy --broadcast --verify -vvvv
