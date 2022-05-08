# neovim 配置文件

项目根目录对应 `nvim` 的配置目录:
- linux下的 `~/.config/nvim`；
- windows下的 `~\AppData\Local\nvim`, `%localappdata%` 快速打开目录位置

linux 系统直接下载放到目录下
```sh
git clone git@github.com:touxing/dotfiles-public-lua.git  ~/.config/nvim
```

windows 系统放到这个目录下
> 在 PowerShell 中运行

```sh
git clone git@github.com:touxing/dotfiles-public-lua.git "$env:LOCALAPPDATA\nvim"
```
注意：windows系统下，如果不生效，就放到 `~\AppData\Local\nvim-data\` 目录下

## 其他

安装 rust hint
1. `rust-analyzer` 在`nvim`中用`TspInstall`安装
2. 把 `rust-analyzer` 执行文件添加到 `$PATH` 中
