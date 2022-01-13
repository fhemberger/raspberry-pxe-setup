#!/usr/bin/env bash
set -euo pipefail

yamllint -c "${GITHUB_WORKSPACE:-.}/.yamllint" "${GITHUB_WORKSPACE:-.}"
ansible-playbook --syntax-check setup-raspberry-pxe-boot.yml
ansible-lint -v --offline setup-raspberry-pxe-boot.yml
