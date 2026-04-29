# 🚀 Medusa Backend Fix - Local Development

## Problem Solved
✅ PostgreSQL connection timeout (KnexTimeoutError)
✅ Docker WSL issues bypassed
✅ Ready to run `npm run dev`

## 1. Install PostgreSQL 16 (2 min)
**Windows:** https://www.enterprisedb.com/downloads/postgres-postgresql-downloads  
- Download "Windows x86-64" → PostgreSQL 16 → Windows installer
- Install with **default settings** (password: set something simple like "postgres")
- Port: 5432 (default)

**Stack Overflow path:** `C:\Program Files\PostgreSQL\16\bin`

## 2. Create Database & User (1 min)
Open **Command Prompt as Administrator**:
```cmd
"C:\Program Files\PostgreSQL\16\bin\psql.exe" -U postgres
```
```
CREATE USER medusa PASSWORD 'medusa';
CREATE DATABASE medusa OWNER medusa;
GRANT ALL PRIVILEGES ON DATABASE medusa TO medusa;
\q
```

## 3. Install Redis (Optional - for queues)
https://github.com/microsoftarchive/redis/releases  
**Or skip** - Medusa works without it initially.

## 4. Fix backend/.env (Copy-paste)
Open `backend/.env` and **ensure these lines**:
```
DATABASE_URL=postgres://medusa:medusa@localhost:5432/medusa
REDIS_URL=redis://localhost:6379
JWT_SECRET=supersecret
COOKIE_SECRET=supersecret
BACKEND_PUBLIC_URL=http://localhost:9000
STORE_CORS=http://localhost:8000
ADMIN_CORS=http://localhost:9000
AUTH_CORS=http://localhost:8000
```

## 5. Start Backend ✅
```cmd
cd backend
start-local.bat
```

**Admin Panel:** http://localhost:9000/app  
**Store API:** http://localhost:9000/store/health

## Docker Alternative (If you fix WSL)
```
# Enable Docker Desktop → Settings → Resources → WSL Integration
docker compose up postgres redis backend
```

**Done! Backend running in 5 minutes.**
