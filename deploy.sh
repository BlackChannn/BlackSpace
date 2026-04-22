#!/bin/bash
# BlackSpace — Firebase Hosting 部署腳本
# 使用方法: bash deploy.sh

echo "🚀 BlackSpace Firebase 部署開始..."

# 檢查 Firebase CLI 是否已安裝
if ! command -v firebase &> /dev/null; then
    echo "📦 安裝 Firebase CLI..."
    npm install -g firebase-tools
fi

# 登入（如果尚未登入）
echo "🔐 Firebase 登入..."
firebase login

# 部署
echo "⬆️  部署中..."
firebase deploy --only hosting

echo "✅ 部署完成！"
echo "🌐 網址: https://blackspace-d3ab9.web.app"
