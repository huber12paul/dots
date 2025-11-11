# PATH Setup
export PATH=$HOME/.local/bin:~/bin:/opt/nvim-linux-x86_64/bin:/usr/local/bin:/usr/bin:$HOME/dots/fzf-zsh-plugin/bin/

# Environment Variables
export EDITOR="nvim"
export TERM="xterm-256color"
export MANPAGER="nvim +Man!"
export GPG_TTY=$(tty)

# FZF Configuration
export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--preview='bat --color=always {}' \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"

# Aliases
alias zshconfig="nvim ~/.zshrc"
alias nvimconfig="cd ~/dots/.config/nvim && nvim ."
alias lg="lazygit"
alias ls="eza --icons=always"
alias cat="batcat"
alias ff="fzf-find-edit"
alias fg="fzf-grep-edit"

#
# Starship Prompt
eval "$(starship init zsh)"

# Zoxide Initialization
# eval "$(zoxide init zsh)"

# Zsh Completion
autoload -Uz compinit
compinit


### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk
#

zinit ice lucid wait'0'
zinit light joshskidmore/zsh-fzf-history-search

# Zsh syntax highlighting (must come at end)
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/dots/fzf-zsh-plugin/fzf-zsh-plugin.plugin.zsh
