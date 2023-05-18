export ANTIGEN_LOG=~/.antigen/log

antigen use oh-my-zsh

antigen bundle git
antigen bundle command-not-found
antigen bundle colored-man-pages

antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-history-substring-search

antigen bundle zdharma-continuum/fast-syntax-highlighting
antigen bundle Tarrasch/zsh-bd

#antigen theme tobyjamesthomas/pi
antigen theme dikiaap/dotfiles .oh-my-zsh/themes/oxide
#antigen theme jackharrisonsherlock/common

antigen apply
