# 双人协作做铺 · ADOFAI Coop Editor

《冰与火之舞》（A Dance of Fire and Ice）的双人实时协作做铺模组。
两个人同时在一张谱上做铺：方块、事件、装饰、以及音频/图片素材，全部双向自动同步。

- 开发者：**cehaby_KFY**
- 当前版本：**v1.3.1**
- 下载：[Releases](../../releases/latest) 或直接拿 `dist/ADOFAICoopEditor-1.3.1.zip`

## 安装

1. 下载 `ADOFAICoopEditor-1.3.1.zip` 并解压，得到 `ADOFAICoopEditor` 文件夹
2. 整个文件夹放进游戏的 `Mods` 目录
3. 启动游戏，Ctrl+F10 打开 UMM 勾选模组；进关卡编辑器后按 `]` 呼出面板

## 用法

- **房主**：地址栏留空 →「开启」，把面板上显示的地址发给房员
- **房员**：把地址填进「房主地址」→「开启」，会自动拉一次房主的谱面
- 异地：房主用 cpolar / SakuraFrp / frp 做一条 **TCP** 隧道，房员填穿透后的地址

## 网站

`site/index.html` 是官网（单文件，无外部依赖）。可整体部署到 Cloudflare Pages。
