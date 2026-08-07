# Cloudflare Pages 部署指南

本项目使用 mdBook 构建静态站点，通过 Cloudflare Pages 自动部署。

## 部署步骤

### 1. 登录 Cloudflare Dashboard

访问 https://dash.cloudflare.com/ 并登录你的账号。

### 2. 创建 Pages 项目

1. 左侧导航选择 **Workers & Pages**
2. 点击 **Create application**
3. 选择 **Pages** 标签
4. 点击 **Connect to Git**

### 3. 连接 GitHub 仓库

1. 授权 Cloudflare 访问你的 GitHub 账号
2. 选择仓库 `gxsdxy/gxsdzy-meetings`
3. 点击 **Begin setup**

### 4. 构建设置

| 设置项 | 值 |
|--------|-----|
| **Production branch** | `main` |
| **Framework preset** | `None` |
| **Build command** | `bash build.sh` |
| **Build output directory** | `book` |
| **Root directory** | `/` (留空) |

### 5. 环境变量（可选）

无需额外环境变量。

### 6. 点击 Save and Deploy

等待首次构建完成，通常需要 2-3 分钟（因为需要安装 Rust 和 mdBook）。

## 自定义域名（可选）

部署完成后，你可以在 Pages 项目设置中：
1. 进入 **Custom domains**
2. 点击 **Set up a custom domain**
3. 输入你的域名，例如 `meetings.gxsdxy.edu.cn`
4. 按照提示配置 DNS 记录

## 自动部署

配置完成后，每次向 `main` 分支推送代码，Cloudflare Pages 会自动：
1. 拉取最新代码
2. 运行 `mdbook build`
3. 将 `book/` 目录部署到全球 CDN

## 本地预览

```bash
# 安装 mdBook（如果未安装）
cargo install mdbook

# 本地构建并预览
mdbook serve --open
```

访问 http://localhost:3000 查看效果。
