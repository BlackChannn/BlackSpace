# BlackSpace — Firebase Hosting 部署指南

## 資料夾結構
```
firebase-deploy/
├── firebase.json       ← Firebase 配置
├── .firebaserc         ← 項目綁定 (blackspace-d3ab9)
├── deploy.sh           ← 一鍵部署腳本
├── README.md           ← 本說明
└── public/
    └── index.html      ← ⚠️ 請把 BlackSpace v2.0 (Standalone).html 放這裡並改名
```

## 部署步驟

### 第一次部署

1. **把 HTML 放入 public 資料夾**
   - 將 `BlackSpace v2.0 (Standalone).html` 複製到 `public/` 資料夾
   - 改名為 `index.html`

2. **安裝 Firebase CLI**（只需做一次）
   ```bash
   npm install -g firebase-tools
   ```

3. **登入 Firebase**
   ```bash
   firebase login
   ```

4. **進入此資料夾**
   ```bash
   cd firebase-deploy
   ```

5. **部署**
   ```bash
   firebase deploy --only hosting
   ```

### 之後更新版本
只需重複步驟 1 和步驟 5。

## 部署完成後的網址
- https://blackspace-d3ab9.web.app
- https://blackspace-d3ab9.firebaseapp.com

## ⚠️ 重要：確認 Authorized Domains
登入 Firebase Console → Authentication → Settings → Authorized domains
確認以下域名已列入：
- `blackspace-d3ab9.web.app`
- `blackspace-d3ab9.firebaseapp.com`
- `localhost`（本地測試用）
