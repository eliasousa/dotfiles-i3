#SPACESHIP ZSH THEME
ZSH_THEME="spaceship"

#PLUGINS
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

SPACESHIP_PROMPT_ORDER=(
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  node          # Node.js section
  ruby          # Ruby section
  elixir        # Elixir section
  docker        # Docker section
  aws           # Amazon Web Services section
  exec_time     # Execution time
  line_sep      # Line break
  battery       # Battery level and status
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
SPACESHIP_CHAR_SYMBOL=">"
SPACESHIP_CHAR_SUFFIX=" "

#OHMYZSH
export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

#ALIASES
source $HOME/.aliases

#ASDF
source $HOME/.asdf/asdf.sh
fpath=(${ASDF_DIR}/completions $fpath)
autoload -Uz compinit
compinit

#SDKMAN
export SDKMAN_DIR=$HOME/.sdkman
[[ -s $HOME/.sdkman/bin/sdkman-init.sh ]] && source $HOME/.sdkman/bin/sdkman-init.sh
