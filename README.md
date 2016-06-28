# My dotfiles

Make sure to clone or download this repository in $HOME. If not, you will need to edit the install scripts (*install.sh* and *zsh-prezto.sh*) to match the new location of the files when making the symbolic links.

## vim + tmux

### Installation of Vim + Tmux

To install, run

```bash
$ ./install.sh
```

Make sure to install [vundle](https://github.com/VundleVim/Vundle.vim) after by executing:

```bash
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

Finally, open vim and run:

```bash
:PluginInstall
```

### Requirements

* vim
* tmux

### Problems

If airline fonts don't show correctly, make sure to install [PowerLine Fonts](https://github.com/powerline/fonts) and to configure your terminal profile font to one of that fonts

### Screenshots

## Zsh with prezto

### Installation of Vim + Tmux

To install, run

```bash
$ ./zsh-prezto.sh
```

### Requirements

* zsh
* [prezto](https://github.com/sorin-ionescu/prezto)

### Screenshots
