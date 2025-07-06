#!/usr/bin/env bash

set -oue pipefail

echo "Cleaning up..."
sed -i 's/AutomaticUpdatePolicy=.*/AutomaticUpdatePolicy=none/g' /etc/rpm-ostreed.conf
