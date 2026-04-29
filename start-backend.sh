#!/bin/bash
# King Keys Backend Starter - Fix PG Connection Issue
set -e

echo "🚀 Starting Medusa Backend (cd backend + pnpm dev)..."

cd backend

echo "📦 Installing dependencies..."
pnpm install --frozen-lockfile

echo "🗄️  Initializing database (migrations)..."
pnpm run ib

echo "✅ Starting development server on http://localhost:9000"
echo "Admin: http://localhost:9000/app"
pnpm run dev
