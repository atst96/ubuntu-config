#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

alias -g init_kb='bash /opt/keyboard/init_user.sh'
alias -g init_keyboard='bash /opt/keyboard/init_user.sh'
alias -g init_disp='bash /opt/display/reconfig.sh'
alias -g init_display='bash /opt/display/reconfig.sh'


export POWERLEVEL9K_MODE='nerdfont-complete'

export POWERLEVEL9K_VCS_GIT_HOOKS=(vcs-detect-changes git-aheadbehind git-remotebranch git-tagname)

prompt powerlevel9k

HOME_ICON=$(print_icon 'HOME_ICON')
export POWERLEVEL9K_HOME_ICON=''
export POWERLEVEL9K_HOME_SUB_ICON=''
export POWERLEVEL9K_DIR_PATH_SEPARATOR="%F{black} $(print_icon 'LEFT_SUBSEGMENT_SEPARATOR') %F{black}"
export POWERLEVEL9K_HOME_FOLDER_ABBREVIATION="%F{black}$(echo $HOME_ICON) %F{black}"

export POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir_writable background_jobs dir vcs)
export POWERLEVEL9K_DISABLE_RPROMPT=true

export POWERLEVEL9K_DIR_OMIT_FIRST_CHARACTER=false


