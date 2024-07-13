#!/bin/bash

set -eou pipefail

apt-get update \
    && apt-get install -y ${APT_DEPENDENCIES}