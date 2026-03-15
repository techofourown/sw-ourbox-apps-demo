#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

matches="$(grep -RInE '^[[:space:]]*if:.*\bsecrets\.' "${ROOT}/.github/workflows" || true)"
if [[ -n "${matches}" ]]; then
  echo "workflow if conditions must not reference secrets.* directly" >&2
  echo "${matches}" >&2
  exit 1
fi

echo "Workflow guard checks passed."
