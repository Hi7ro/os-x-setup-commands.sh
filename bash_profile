# =========================
# OH MY ZSH
# =========================

export ZSH="$HOME/.oh-my-zsh"

#ZSH_THEME="robbyrussell"

plugins=(
git
sudo
docker
npm
node
z
)

source $ZSH/oh-my-zsh.sh

# =========================
# BASIC CONFIG
# =========================

HOST_NAME="xv7ro"

# =========================
# PROMT
# =========================

emojis=("👾" "🌎️" "🎲" "🦂" "🐉" "🫥" "🤖")
EMOJI=${emojis[$RANDOM % ${#emojis[@]}]}

autoload -Uz vcs_info
precmd() {
  vcs_info
}

zstyle ':vcs_info:git:*' formats '(%b)'
zstyle ':vcs_info:*' enable git

PROMPT='
%F{red}${HOST_NAME}:%f %F{magenta}%~%f %F{green}${vcs_info_msg_0_}%f
${EMOJI} > '

# =========================
# NVM
# =========================

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && source "/opt/homebrew/opt/nvm/nvm.sh"

# =========================
# SDKMAN
# =========================

export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"

# =========================
# ANGULAR COMPLETION
# =========================

if command -v ng >/dev/null 2>&1; then
  source <(ng completion script)
fi


# =========================
# EX SOURCES
# =========================
source ~/.zsh_exports
source ~/.zsh_aliases

# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"




export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_complet$

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
