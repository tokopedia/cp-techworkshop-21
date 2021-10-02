#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

function main {
    printf "=== Provisioning ===\n"
    printf "== Do dist-upgrade\n"
    sudo apt-get -qq update && sudo DEBIAN_FRONTEND=noninteractive apt-get upgrade -y

    printf "== Installing nginx ==\n"
    sudo DEBIAN_FRONTEND=noninteractive apt-get -qqy install nginx
}

main "$@"
