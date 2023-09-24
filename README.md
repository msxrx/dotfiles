# dotfiles
My dotfiles, managed via via [GNU Stow](https://www.gnu.org/software/stow/) installed through [Homebrew](http://brew.sh/).

## Acknowledgements
Big thanks to ItsMeAra who I forked this repo from.

What works for me might not work for you.


## Steps to install

**1. Install Homebrew by following the instructions on:**  
[https://brew.sh/](https://brew.sh/)

**2. Clone this repo**  
```
cd ~/sync/repos
git clone --depth=1 git@github.com:msxrx/dotfiles.git
cd dotfiles/
```

**3. Install Homebrew Formulae from brew.txt**  
```
// on linux:
cat brew-linux.txt | xargs brew install
// additionally on macos:
cat brew-macos.txt | xargs brew install
```

**4. Setup Symlinks via Stow**  
```
// on linux:
stow -t ~ -d stow -S fish git ranger vim
// additionally on macos:
stow -t ~ -d stow -S shkd yabai
```

**5. Install software in brew-cask.txt**  
```
cat brew-cask.txt | xargs brew install --cask
```

**6. Change your shell to Fish**
```
sudo sh -c "echo $(which fish) >> /etc/shells"
chsh -s $(which fish)
```

**7. Install fisher and nvm**
```
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
fisher install jorgebucaran/nvm.fish
```

**8. Install omf and foreign-env**
https://github.com/oh-my-fish/oh-my-fish
```
omf install foreign-env
```

**9. Install global npm packages in npm.txt**  
```
cat npm.txt | xargs pnpm add -g
```
