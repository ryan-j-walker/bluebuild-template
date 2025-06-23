#!/usr/bin/env bash

set -oue pipefail

echo "Cleaning up..."
sed -i 's/AutomaticUpdatePolicy=.*/AutomaticUpdatePolicy=none/g' /etc/rpm-ostreed.conf
curl -s https://raw.githubusercontent.com/ublue-os/bluefin/refs/heads/main/system_files/shared/usr/bin/podman-host -o /usr/bin/podman-host
curl -s https://raw.githubusercontent.com/ublue-os/bluefin/refs/heads/main/system_files/shared/usr/bin/podman-host -o /usr/bin/podman-host2
chmod +x /usr/bin/podman-host