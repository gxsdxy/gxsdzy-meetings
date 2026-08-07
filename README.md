# gxsdzy-meetings

gxsdxy 工作会议纪要仓库。mdBook 构建，GitHub Actions 自动部署到 Cloudflare Pages。

**在线浏览**：https://gxsdzy-meetings.pages.dev/

## 新增会议纪要

1. 将纪要写入 `src/YYYY/MM/会议主题-YYYYMMDD.md`
2. 在 `src/SUMMARY.md` 对应的年/月分组下登记一行链接
3. 推送到 `main`，自动完成构建与部署

纪要内容需包含会议时间、地点/形式、参会人员、议题、决议、待办事项等要素。

## 目录结构

```
gxsdzy-meetings/
├── src/                    # mdBook 源文件（纪要唯一存放位置）
│   ├── 2026/08/            # 纪要按 年/月 归档
│   ├── SUMMARY.md          # 侧边栏结构（新增纪要需在此登记）
│   └── README.md           # 站点首页
├── theme/                  # 站点自定义样式
├── .github/workflows/      # GitHub Actions 自动部署
├── book.toml               # mdBook 配置
└── DEPLOY.md               # 部署说明
```

`book/` 是构建产物目录，已被 `.gitignore` 忽略，无需提交。

## 本地预览

```bash
mdbook serve --open
```

---

*会议纪要由豆包 AI 助手（Seed 2.1 Pro）整理生成；站点结构修复与部署流水线由 Kimi K3 完成，特此感谢。*
