# git
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{180}"
zstyle ':vcs_info:git:*' unstagedstr "%F{yellow}+"
zstyle ':vcs_info:*' formats "%F{cyan}%c%u (%b) %f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }

# completion
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}'
zstyle ':completion:*' menu select
fpath=($HOMEBREW_DIR/share/zsh/site-functions $fpath)
autoload -U compinit
compinit -u

# history
[ -z "$HISTFILE" ] && HISTFILE="$HOME/.zsh_history"
HISTSIZE=500000
SAVEHIST=500000
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history

# zsh-autosuggestions のプラグインディレクトリを追加
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8' # 提案をグレーに設定
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# プロンプトカスタマイズ
PROMPT='%B%F{031}%n@%m%f%b : %F{032}%~%f%F{cyan}$vcs_info_msg_0_%f%F{037}🌙 >%f '