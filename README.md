我使用的是zellij和vim的开发环境，目前这个效果我很满意了
使用方法：
1.安装zsh
`sudo apt install zsh` # 安装
`chsh -s /bin/zsh` # 启用zsh
安装完成后需要重启才能生效
2.安装oh my zsh
`sh -c "$(wget https://gitee.com/mirrors/oh-my-zsh/raw/master/tools/install.sh -O -)"`
3.将我的配置文件覆盖到对应文件中
git clone下来我的文件后，找到你对应的文件，覆盖即可
bashrc和zshrc在~目录下，.coc文件在~/.vim文件夹中
