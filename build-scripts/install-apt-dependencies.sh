#!/bin/bash

set -eou pipefail

apt-get update \
    && apt-get install -y ${APT_DEPENDENCIES} \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*