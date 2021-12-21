# Onboarding instructions

1. Install Iterm2
2. Install Homebrew
3. Install Ohmyzsh
   - `brew install zsh`
   - sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
4. Add '.zshrc' section into existing file
5. Install NVM
   - `brew install nvm`
6. Update git config
   - `git config --global alias.add-commit '!git add -A && git commit'`(usage: `git add-commit -m "Random commit message"`)
   - `git config remote.origin.prune true` (usage: autmatically prunes remote branches on git pull/fetch)
