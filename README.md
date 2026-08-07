# gxsdzy-meetings

广西水利电力职业技术学院 - 工作会议纪要仓库

## 简介

本仓库用于存储广西水利电力职业技术学院（gxsdzy）各类工作会议纪要，Markdown 格式，按年份/月份目录归档，并通过 mdBook 生成在线文档站。

## 目录结构

```
gxsdzy-meetings/
├── src/                    # mdBook 源文件（纪要唯一存放位置）
│   ├── 2026/08/            # 纪要按 年/月 归档
│   ├── SUMMARY.md          # 站点侧边栏结构（新增纪要需在此登记）
│   └── README.md           # 站点首页
├── theme/                  # 站点自定义样式
├── .github/workflows/      # GitHub Actions 自动部署
├── book.toml               # mdBook 配置
└── DEPLOY.md               # 部署说明
```

`book/` 是构建产物目录，已被 `.gitignore` 忽略，无需提交。

## 新增会议纪要

1. 将纪要写入 `src/YYYY/MM/会议主题-YYYYMMDD.md`
2. 在 `src/SUMMARY.md` 对应的年/月分组下登记一行链接
3. 推送到 `main`，GitHub Actions 自动构建并部署到 Cloudflare Pages

## 会议纪要规范

- 文件命名格式：`会议主题-YYYYMMDD.md`
- 按年份/月份二级目录归档
- 包含会议时间、地点/形式、参会人员、议题、决议、待办事项等要素

## 在线浏览

站点由 mdBook 构建，通过 GitHub Actions 自动部署到 Cloudflare Pages，详见 [DEPLOY.md](./DEPLOY.md)。

## 本地预览

```bash
# 安装 mdBook 后
mdbook serve --open
```

## 技术栈

- **Markdown** - 会议纪要源文件格式
- **mdBook** - 静态站点生成器
- **GitHub Actions** - 自动构建与部署
- **Cloudflare Pages** - 静态站点托管

---

*本仓库会议纪要由豆包 AI 助手（Seed 2.1 Pro）自动整理生成。*
