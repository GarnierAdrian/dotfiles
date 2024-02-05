# Dotfiles

These are my dotfiles


## Dependencies

### Managing the dotfiles

To manage the dotfiles we use a mix of GNU Stow and Git. Git helps with the version control, while GNU Stow works as a simpel tool to make the simbolic links. 

```
sudo apt install stow git
```

Once installed, you can download the repo into your home directory and apply them by using stow.

```
$ git clone git@github.com:GarnierAdrian/dotfiles.git
$ cd dotfiles
$ stow .
```


