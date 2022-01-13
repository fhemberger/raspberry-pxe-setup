#!/usr/bin/env bash
set -euo pipefail

export ANSIBLE_DEPRECATION_WARNINGS=0

GITHUB_WORKSPACE="$(pwd)" .github/actions/ansible-lint/entrypoint.sh
