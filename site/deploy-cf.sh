#!/bin/bash
# 部署到 Cloudflare Pages（免费的 *.pages.dev 域名）
#
# 用法（任选一种登录方式后，直接跑这个脚本）：
#
#   A. 用 API Token（推荐，非交互式，CI 也能用）
#      export CLOUDFLARE_API_TOKEN="你的token"
#      ./deploy-cf.sh
#
#   B. 用浏览器登录（第一次会弹授权页，之后凭证存在 ~/.wrangler）
#      npx wrangler login
#      ./deploy-cf.sh
#
# 项目名决定免费域名的前缀：adofai-coop-editor.pages.dev
# 换域名就改下面的 PROJECT 变量。

set -e

PROJECT="${PROJECT:-adofai-coop-editor}"
DIR="$(cd "$(dirname "$0")" && pwd)"
# 优先用本机装好的 wrangler，没有就用 npx 临时拉一个
WRANGLER="$(command -v wrangler || true)"
if [ -z "$WRANGLER" ]; then
  WRANGLER="npx --yes wrangler@3"
fi

echo "部署目录: $DIR"
echo "项目名:   $PROJECT  ->  https://$PROJECT.pages.dev"
echo

cd "$DIR"

# Pages 的静态部署：直接上传整个目录
$WRANGLER pages deploy . \
  --project-name "$PROJECT" \
  --branch main \
  --commit-dirty=true

echo
echo "完成。首次部署 Cloudflare 会给一个 https://$PROJECT.pages.dev 的地址。"
