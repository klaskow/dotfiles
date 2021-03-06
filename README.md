# dotfiles

Simple configuration for console based stuff. It consists mainly of neovim, tmux and some bash scripts.

## installation

```sh
$ cd ~ && git clone https://github.com/klaskow/dotfiles
$ cd ~/dotfiles && sh install.sh
```

## configuration

```sh
$ sudo apt install curl build-essential dpkg-dev fakeroot cmake fakeroot ruby ruby-dev python3-pip python2 python liblocal-lib-perl cpanminus xclip
$ sudo apt build-dep vim neovim libvte-2.91-common

```

### node


```sh
$ cd ~ && git clone https://github.com/nvm-sh/nvm.git .nvm
$ cd ~/.nvm && git checkout v0.35.3
$ . nvm.sh
```

Now add these lines to your ~/.bashrc:

```bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
```

To get the latest LTS version of node and migrate your existing installed packages, use

```sh
$ nvm install --lts # --reinstall-packages-from=current
$ nvm install -g neovim
```

### python

```sh
$ curl https://bootstrap.pypa.io/get-pip.py --output get-pip.py
$ sudo python2 get-pip.py
$ pip install neovim
$ pip3 install neovim
```

### perl

```sh
$ perl -MCPAN -Mlocal::lib -e 'CPAN::install(LWP)'
$ sudo gem install neovim
```

### neovim

```sh
$ git clone https://github.com/neovim/neovim.git
$ cd neovim && git checkout tags/v0.4.4
$ make CMAKE_BUILD_TYPE=RelWithDebInfo
$ sudo make install
$ nvim
:checkhealth
```

### vte
```sh
$ ln -s /etc/profile.d/vte-2.91.sh /etc/profile.d/vte.sh
```