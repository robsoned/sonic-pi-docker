#!/bin/bash

set -eou pipefail

APT_DEPENDENCIES=$1

apt-get update \
    && apt-get install -y ${APT_DEPENDENCIES}