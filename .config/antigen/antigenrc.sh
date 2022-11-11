export ANTIGEN_LOG=~/.antigen/log

antigen use oh-my-zsh

antigen bundle git
antigen bundle command-not-found

antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

#antigen theme tobyjamesthomas/pi
antigen theme dikiaap/dotfiles .oh-my-zsh/themes/oxide
#antigen theme jackharrisonsherlock/common

antigen apply
