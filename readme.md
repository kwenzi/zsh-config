# Server zsh config

Use for regular users or deploy/backup/rescue

Get oh-my-zsh
```sh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/Git/oh-my-zsh
ln -s ~/Git/oh-my-zsh ~/.oh-my-zsh
```

Get zsh config
```sh
git clone https://github.com/kwenzi/zsh-config.git ~/Git/zsh-config
ln -s ~/Git/zsh-config ~/.zsh
cp ~/.zsh/.zshrc.template ~/.zshrc
```

## Set oh-my-zsh config for all new users

`/usr/local/sbin/adduser.local`
```sh
# arguments:
# username uid gid home-directory
homedir=$4
mkdir -p $homedir/Git

# install oh-my-zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git $homedir/Git/oh-my-zsh
ln -s $homedir/Git/oh-my-zsh $homedir/.oh-my-zsh

# retrieve default config
git clone https://github.com/kwenzi/zsh-config.git $homedir/Git/zsh-config
ln -s $homedir/Git/zsh-config $homedir/.zsh

cp $homedir/.zsh/.zshrc.template $homedir/.zshrc
```
