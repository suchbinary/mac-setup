mac-setup
===========

An assortment of configuration and scripting to setup my machines for development. Inspired (shamelessly copied from https://github.com/mjwbenton/mattb-setup)

## Unscripted setup

Before running any of these scripts, there some other stuff I normally do on a new mac that I don't have scripted.

- Check for any updates in the Mac Store
- Manually change display scaling to “More Space”
- Manually change hostname using System Preferences -> Sharing
- Manually turn on sound icon in menu bar using System Preferences -> Sound
- Manually turn off Caps Lock using System Preferences -> Keyboard -> Modifier Keys
- Open Finder preferences and...
  - Click show for all items on the Desktop
  - Go through sidebar items and show/hide whatever you want
- Right click on Finder toolbar, add the path item and remove the ones you won't use

## Scripted setup

- git clone this repo: `git clone https://github.com/suchbinary/mac-setup.git`
- `scripts/osx/setup_osx.bash`
- `scripts/osx/install_brews.zsh`
- Once all the software is installed...
  - You can run the non-OSX specific scripts
  - `scripts/install_ohmyzsh.zsh`
  - `scripts/install_dotfiles.zsh`



dotfiles
====================

Files in this directory are symlinked into their correct directory using [`install_dotfiles.zsh`](../scripts/install_dotfiles.zsh). Any files in here can be overriden by creating a directory called `dotfiles.local` alongside the `dotfiles` directory. In addition many of the defaults here support an additional local file which gets imported into the main one. For example [`.zshrc`](./zshrc) will import `.zshrc.local` if it exists giving you a way to extend the file on a per-machine basis.
