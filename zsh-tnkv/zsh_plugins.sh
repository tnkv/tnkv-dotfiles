echo 'adding zoxide init to ~/.zshrc'
echo 'eval "$(zoxide init zsh)"' >> ~/.zshrc
echo 'downloading zsh plugins (fast-syntax-highlighting, zsh-autosuggestions, colors)'
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git \
  ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting

git clone https://github.com/zsh-users/zsh-autosuggestions \
  ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zpm-zsh/colors \
  ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/colors

