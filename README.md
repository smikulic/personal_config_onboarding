# Onboarding instructions

1. Install Iterm2
2. Copy 'com.googlecode.iterm2.plist' and SolarizedDark.itermcolors file into Iterm2 settings
3. Replace '.bash_profile' and install bash completion
4. Install Sublime Text 3
5. replace Preferences > Settings - User with 'Preferences.sublime-settings'
6. Install package manager for Sublime Text 3 and a Theme named in Preferences file
7. Install Sublime Text 3 packages:
  - File Modify Status
  - Git Conflict Resolver
8. Update git config
  - git config --global alias.add-commit '!git add -A && git commit' (usage: git add-commit -m "Random commit message")
  - git config remote.origin.prune true (usage: autmatically prunes remote branches on git pull/fetch)
