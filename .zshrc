# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export VOLTA_HOME="$HOME/.volta"

export PATH="/usr/local/bin:$PATH"
export PATH="$VOLTA_HOME/bin:$PATH"


# Set name of the theme to load.
ZSH_THEME="robbyrussell"  # This is the default theme. There are many others to choose from.

# Plugins
# Plugins can be added to the plugins array. They can also be added to ~/.oh-my-zsh/custom/plugins/
plugins=(
  git
  zsh-autosuggestions
  docker
  npm
  yarn
  vscode
)

# Additional options
HIST_STAMPS="mm/dd/yyyy"
export UPDATE_ZSH_DAYS=7  # Check for updates once a week.

# Case insensitive auto completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# Auto correct typos
setopt CORRECT

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

# User customizations
alias lal="ls -la"
alias gs="git status"
alias gd="git diff"
alias gc="git commit"
alias gp="git push"
alias ga="git add"

source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
