# Zellij + Vim 开发环境配置

当前使用的开发环境为 **Zellij** 与 **Vim**，在这套配置下，习惯后可完全脱离鼠标进行编程，切文件等操作快捷舒服。
其中大部分插件的具体使用方法请自行查阅：[知乎专栏 - Zellij + Vim 配置详解](https://zhuanlan.zhihu.com/p/145793963)

## 使用方法

### 1. 安装 zsh

```bash
sudo apt install zsh       # 安装
chsh -s /bin/zsh           # 启用 zsh
```

> 安装完成后需要重启才能生效。

### 2. 安装 Oh My Zsh

```bash
sh -c "$(wget https://gitee.com/mirrors/oh-my-zsh/raw/master/tools/install.sh -O -)"
```

### 3. 覆盖配置文件

将本仓库克隆到本地后，找到对应文件并覆盖：

- `.bashrc`、`.vimrc`、`.zshrc` 位于 `~/` 目录下  
- `.coc` 文件位于 `~/.vim` 文件夹中

## 依赖与报错处理

大部分依赖问题和报错可以通过网络搜索解决。  
实在查不到解决方法时，欢迎提问。

## 特性说明

- **zshell**：很好地支持终端复用需求，操作简洁，分屏操作会标识在终端下方，一目了然。
- **NerdTree**：目录树功能，很好地支持了文件切换和分屏需求。
- **Vim 插件**：主要提供自动补全、语法高亮等功能，其他配置以美观为主。

> **ps**：其中还有一些个人习惯操作，比如保存退出 `fwq` 简化为 `wq`，保存操作 `fw` 简化为 `w` 等，具体可参考 `.vimrc` 中的键盘映射部分内容。
