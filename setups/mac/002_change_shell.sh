# - perztoを導入する
# - デフォルトSHELLをzshに変更する

$(which zsh)

# Download and install prezto (https://github.com/sorin-ionescu/prezto)
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

# Change default shell
chsh -s $(which zsh)
