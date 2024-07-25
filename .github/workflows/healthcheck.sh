#!/bin/bash
set -e

status_code=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:8000/health)
if [ $status_code -eq 200 ]; then
  echo "Backend started successfully"
else
  echo "Backend failed to start"
  exit 1
fi
