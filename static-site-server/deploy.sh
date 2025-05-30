#!/usr/bin/env bash
set -euo pipefail

LOCAL_DIR="./dummysite/"
REMOTE_USER="admin"
REMOTE_HOST="13.232.106.151"
REMOTE_DIR="/var/www/dummysite"
SSH_KEY="$HOME/.ssh/webapp.pem"

echo "🚀 Deploying to ${REMOTE_USER}@${REMOTE_HOST}:${REMOTE_DIR}"
rsync -avh \
  -e "ssh -i ${SSH_KEY}" \
  "${LOCAL_DIR}" \
  "${REMOTE_USER}@${REMOTE_HOST}:${REMOTE_DIR}/"

echo "✅ Deployment complete!"
