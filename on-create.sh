#!/usr/bin/env bash
set -euo pipefail

if [ ! -d /workspaces/odoo-spaces ]; then
    git clone --depth 1 https://github.com/jorenvo/odoo-spaces.git /workspaces/odoo-spaces
fi

if [ ! -d /workspaces/enterprise-spaces ]; then
    git clone --depth 1 https://github.com/jorenvo/enterprise-spaces.git /workspaces/enterprise-spaces
fi