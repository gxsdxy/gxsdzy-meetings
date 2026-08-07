# gxsdzy-meetings

广西水利电力职业技术学院 - 工作会议纪要仓库

## 简介

本仓库用于存储广西水利电力职业技术学院（gxsdzy）各类工作会议纪要，采用 Markdown 格式归档，支持按年份/月份目录结构组织。

## 目录结构

```
gxsdzy-meetings/
├── 2026/
│   └── 08/
│       └── 信息工程学院工作布置会-20260807.md
├── book/              # mdBook 构建输出目录
├── src/               # mdBook 源文件目录
├── book.toml          # mdBook 配置文件
└── README.md
```

## 会议纪要规范

- 文件命名格式：`会议主题-YYYYMMDD.md`
- 按年份/月份二级目录归档
- 包含会议时间、地点、参会人员、议题、决议、待办事项等要素

## 在线浏览

本仓库使用 [mdBook](https://rust-lang.github.io/mdBook/) 构建静态站点，通过 Cloudflare Pages 托管，支持在线浏览和搜索。

## 技术栈

- **Markdown** - 会议纪要源文件格式
- **mdBook** - 静态站点生成器
- **Cloudflare Pages** - 静态站点托管

---

*本仓库会议纪要由豆包 AI 助手（Seed 2.1 Pro）自动整理生成。*
