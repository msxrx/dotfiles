# dotfiles
My dotfiles, managed via via [GNU Stow](https://www.gnu.org/software/stow/) installed through [Homebrew](http://brew.sh/).

## Acknowledgements
Big thanks to ItsMeAra who I forked this repo from.

What works for me might not work for you.


## Steps to install

**1. Install Homebrew by running:**  
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo '# Set PATH, MANPATH, etc., for Homebrew.' >> ~/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

**2. Clone this repo**  
```
cd ~/sync/repos
git clone --depth=1 git@github.com:msxrx/dotfiles.git
cd dotfiles/
```

**3. Install Homebrew Formulae from brew.txt**  
```
cat brew.txt | xargs brew install
```

**4. Setup Symlinks via Stow**  
```
cd ~/dotfiles
stow git
stow vim
stow ranger
```

**5. Install software in brew-cask.txt**  
```
cat brew-cask.txt | xargs brew install --cask
```

**6. Change your shell to Fish**
```
sudo echo /usr/local/bin/fish >> /etc/shells
```

Next, go to System Preferences → Accounts. Right-click the account, choose `Advanced Options`. In the `Login shell` field, add the path to Fish.

**7. Install global npm packages in npm.txt**  
```
cat npm.txt | xargs npm install -g
```
