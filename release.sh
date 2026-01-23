#!/bin/bash
set -e

# 获取版本号
VERSION=$(grep 'version:' pubspec.yaml | sed 's/version: //' | cut -d'+' -f1)
echo "🚀 发布版本: v$VERSION"

# 构建 Android APK
echo "📱 构建 Android APK..."
flutter build apk --release

# 构建 Web 版本
echo "🌐 构建 Web 版本..."
flutter build web --base-href "/moyun/app/"
rm -rf app
cp -r build/web app

# 更新官网版本号
sed -i '' "s/v[0-9]*\.[0-9]*\.[0-9]*/v$VERSION/g" index.html

# 提交代码
echo "📤 提交代码..."
git add .
git commit -m "v$VERSION" || true
git push origin main

# 创建 GitHub Release
echo "🎉 创建 Release..."
gh release create "v$VERSION" build/app/outputs/flutter-apk/app-release.apk \
  --title "v$VERSION" \
  --notes "墨韵 v$VERSION"

echo "✅ 发布完成!"
echo "官网: https://wang2kua.github.io/moyun/"
echo "下载: https://github.com/wang2kua/moyun/releases/download/v$VERSION/app-release.apk"
