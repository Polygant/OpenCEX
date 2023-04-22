#/bin/bash
set -a
source /app/opencex/backend/.env
set +a
# build backend
cd /app/opencex/backend/ || exit
chmod +x /app/opencex/backend/manage.py
docker build -t opencex . --no-cache

