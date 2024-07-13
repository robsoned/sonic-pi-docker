#!/bin/bash

set -eou pipefail

cd /sonic-pi/app \
&& ./pi-install-elixir.sh \
&& ./linux-build-all.sh \
&& echo "Sonic Pi installed successfully"