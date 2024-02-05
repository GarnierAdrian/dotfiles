# Dotfiles

These are my dotfiles


## Requirements

To manage the dotfiles we use a mix of GNU Stow and Git. Git helps with version control, while GNU Stow works as a simple tool to make the symbolic links. 

```
sudo apt install stow git
```

## Installation

You can download the repo into your home directory and apply them by using stow.

```
$ git clone git@github.com:GarnierAdrian/dotfiles.git
$ cd dotfiles
$ stow .
```

## Additional Resources

A good base guide on how to start using stow can be found on [Derams of Autonomy's](https://youtu.be/y6XCebnB9gs?si=8kJ7r6yaVlHMpX6S) YouTube channel. 
