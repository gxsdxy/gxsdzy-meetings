# Cloudflare Pages 部署指南

本项目通过 **GitHub Actions** 自动构建 mdBook 并以 Direct Upload 方式部署到 Cloudflare Pages：

- 无需在 Cloudflare Dashboard 里连接 Git 仓库、配置构建命令
- 推送到 `main` 分支即自动部署，也可在 Actions 页手动触发
- 工作流文件：`.github/workflows/deploy.yml`

## 一次性配置

### 1. 获取 Cloudflare API Token

1. 访问 https://dash.cloudflare.com/profile/api-tokens
2. 点击 **Create Token**，可使用 "Edit Cloudflare Workers" 模板，或自定义权限：**Account → Cloudflare Pages → Edit**
3. 保存生成的 Token

### 2. 获取 Account ID

登录 Cloudflare Dashboard，在 **Workers & Pages** 概览页右侧栏即可看到 **Account ID**。

### 3. 配置 GitHub Secrets

在仓库 **Settings → Secrets and variables → Actions** 中添加：

| Secret | 值 |
|--------|-----|
| `CLOUDFLARE_API_TOKEN` | 第 1 步的 Token |
| `CLOUDFLARE_ACCOUNT_ID` | 第 2 步的 Account ID |

### 4. 触发部署

向 `main` 推送任意提交即可。首次部署会自动创建名为 `gxsdzy-meetings` 的 Pages 项目（如需改名，修改 workflow 中的 `--project-name`）。

> 注意：本项目走 Direct Upload，**不要**再在 Cloudflare Dashboard 给该项目连接 Git 仓库设置构建命令，否则会双重部署。

## 自定义域名（可选）

部署完成后，在 Pages 项目设置中：

1. 进入 **Custom domains**
2. 点击 **Set up a custom domain**
3. 输入域名，例如 `meetings.gxsdzy.edu.cn`
4. 按照提示配置 DNS 记录

## 本地预览

```bash
# 安装 mdBook（如果未安装）：cargo install mdbook
mdbook serve --open
```

访问 http://localhost:3000 查看效果。
