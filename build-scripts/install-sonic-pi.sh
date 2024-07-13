#!/bin/bash

set -eou pipefail

cd app \
&& ./pi-install-elixir.sh \
&& ./linux-build-all.sh \
&& echo "Sonic Pi installed successfully"