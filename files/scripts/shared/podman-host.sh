#!/usr/bin/env bash

set -oue pipefail

curl -s https://raw.githubusercontent.com/ublue-os/bluefin/refs/heads/main/system_files/shared/usr/bin/podman-host -o /usr/bin/podman-host
chmod +x /usr/bin/podman-host
