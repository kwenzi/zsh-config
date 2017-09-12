# Server zsh config

Use for regular users or deploy/backup/rescue

Get oh-my-zsh
```sh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/Git/oh-my-zsh
ln -s ~/Git/oh-my-zsh ~/.oh-my-zsh
```

Get zsh config
```sh
git clone git@github.com:kwenzi/zsh-config.git ~/Git/zsh-config
ln -s ~/Git/zsh-config ~/.zsh
cp ~/.zsh/.zshrc.template ~/.zshrc
```

## Set default config (for all new users)

```sh
sudo mv /etc/zsh/zshrc /etc/zsh/zshrc.orig
cp ~/.zsh/.zshrc.template /etc/zsh/zshrc
```
