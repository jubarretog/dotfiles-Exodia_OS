#####################################
#                                   #
#  @author      : 00xWolf           #
#    GitHub    : @mmsaeed509       #
#    Developer : Mahmoud Mohamed   #
#  﫥  Copyright : Exodia OS         #
#                                   #
#####################################

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]];
    
    then
        
        source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"

fi

# default editor #
export EDITOR=nvim

# Path to your oh-my-zsh installation. #
export ZSH=$HOME/.oh-my-zsh

# zsh theme #
ZSH_THEME="powerlevel10k/powerlevel10k"

# disable bi-weekly auto-update checks. #
DISABLE_AUTO_UPDATE="true"

# plugins #
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  web-search
  )

source $ZSH/oh-my-zsh.sh

## ------------ User configuration ------------ ##

# On-demand rehash #
zshcache_time="$(date +%s%N)"

autoload -Uz add-zsh-hook

rehash_precmd() {
  if [[ -a /var/cache/zsh/pacman ]];
      
      then
          
          local paccache_time="$(date -r /var/cache/zsh/pacman +%s%N)"
          
          if (( zshcache_time < paccache_time ));
              
              then
                  
                  rehash
                  zshcache_time="$paccache_time"

          fi

  fi

}

add-zsh-hook -Uz precmd rehash_precmd

## ------------ Alias ------------ ##

alias zshconfig="geany ~/.zshrc"
alias ohmyzsh="thunar ~/.oh-my-zsh"

# ls #
alias ls='lsd'
alias l='lsd -lh'
alias ll='lsd -lah'
alias la='lsd -A'
alias lm='lsd -m'
alias lr='lsd -R'
alias lg='lsd -l --group-directories-first'

# git #
alias gcl='git clone --depth 1'
alias gi='git init'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push origin master'
alias cb='git checkout -f'

# Pacman #
alias sync="sudo pacman -Syyy"
alias install="sudo pacman -S"
alias ipkg="sudo pacman -U"
alias update="sudo pacman -Syyu"
alias search="sudo pacman -Ss"
alias search-local="sudo pacman -Qs"
alias pkg-info="sudo pacman -Qi"
alias clr-cache="sudo pacman -Scc"
alias unlock="sudo rm /var/lib/pacman/db.lck"
alias remove="sudo pacman -R"
alias autoremove="sudo pacman -Rns"

# yay - AUR Helper #
alias Ysync="yay -Syyy"
alias Yinstall="yay -S"
alias Yipkg="yay -U"
alias Yupdate="yay -Syyu"
alias Ysearch="yay -Ss"
alias Ysearch-local="yay -Qs"
alias Ypkg-info="yay -Qi"
alias Ylocal-install="yay -U"
alias Yclr-cache="yay -Scc"
alias Yremove="yay -R"
alias Yautoremove="yay -Rns"

# Other #
alias M="ncmpcpp"
alias MA="cd ~/.ncmpcpp/scripts/ && ./ncmpcpp-art"
alias youtube="ytfzf -t"
alias eDEX-UI="eDEX-UI-Linux-x86_64.AppImage"
alias t="tmux"
alias UL="setxkbmap -layout us,ara ; setxkbmap -option 'grp:alt_shift_toggle'"

## ------------ COLORS ------------ ##

# Reset #
RESET_COLOR='\033[0m' # Text Reset

# Regular Colors #
Black='\033[0;30m'  Red='\033[0;31m'     Green='\033[0;32m'  Yellow='\033[0;33m'
Blue='\033[0;34m'   Purple='\033[0;35m'  Cyan='\033[0;36m'   White='\033[0;37m'

# Bold #
BBlack='\033[1;30m' BRed='\033[1;31m'    BGreen='\033[1;32m' BYellow='\033[1;33m'
BBlue='\033[1;34m'  BPurple='\033[1;35m' BCyan='\033[1;36m'  BWhite='\033[1;37m'

# Underline #
UBlack='\033[4;30m' URed='\033[4;31m'    UGreen='\033[4;32m' UYellow='\033[4;33m'
UBlue='\033[4;34m'  UPurple='\033[4;35m' UCyan='\033[4;36m'  UWhite='\033[4;37m'

# Background #
On_Black='\033[40m' On_Red='\033[41m'    On_Green='\033[42m' On_Yellow='\033[43m'
On_Blue='\033[44m'  On_Purple='\033[45m' On_Cyan='\033[46m'  On_White='\033[47m'

# High Intensity #
IBlack='\033[0;90m' IRed='\033[0;91m' IGreen='\033[0;92m' IYellow='\033[0;93m'      
IBlue='\033[0;94m' IPurple='\033[0;95m' ICyan='\033[0;96m' IWhite='\033[0;97m'      

# Bold High Intensity #
BIBlack='\033[1;90m' BIRed='\033[1;91m' BIGreen='\033[1;92m' BIYellow='\033[1;93m'
BIBlue='\033[1;94m' BIPurple='\033[1;95m' BICyan='\033[1;96m' BIWhite='\033[1;97m'

# High Intensity backgrounds #
On_IBlack='\033[0;100m' On_IRed='\033[0;101m' On_IGreen='\033[0;102m' On_IYellow='\033[0;103m'
On_IBlue='\033[0;104m' On_IPurple='\033[0;105m' On_ICyan='\033[0;106m' On_IWhite='\033[0;107m'

# load on startup #

#echo -e "
#    _/_/_/_/                               _/   _/                    _/_/       _/_/_/   
#   _/         _/    _/     _/_/       _/_/_/          _/_/_/       _/    _/   _/          
#  _/_/_/       _/_/     _/    _/   _/    _/   _/   _/    _/       _/    _/     _/_/       
# _/         _/    _/   _/    _/   _/    _/   _/   _/    _/       _/    _/         _/      
#_/_/_/_/   _/    _/     _/_/       _/_/_/   _/     _/_/_/         _/_/     _/_/_/                                                                                   
#
#I stand with Palestine   |  Free Palestine 
#"
# echo -e ${Purple} "┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┳━━━━━━━━━━━━━━━━━┳━━━━━━━━━━━┓"
# echo -e ${Purple} "┃                                                                                ┃ ${Cyan}  ${BBlue}Exodia Fetch ${Purple}┃  ${BGreen}  ${BYellow}  ${BRed}  ${Purple}┃"${RESET_COLOR}
# echo -e ${Purple} "┃  ██╗ ██╗     ███████╗██╗  ██╗ ██████╗ ██████╗ ██╗ █████╗      ██████╗ ███████╗ ┣━━━━━━━━━━━━━━━━━┻━━━━━━━━━━━┫"${RESET_COLOR}
# echo -e ${Purple} "┃ ████████╗    ██╔════╝╚██╗██╔╝██╔═══██╗██╔══██╗██║██╔══██╗    ██╔═══██╗██╔════╝ ┃                             ┃"${RESET_COLOR}
# echo -e ${Purple} "┃ ╚██╔═██╔╝    █████╗   ╚███╔╝ ██║   ██║██║  ██║██║███████║    ██║   ██║███████╗ ┃ ${Cyan}  ${BIGreen}@author MAHMOUD MOHAMED  ${Purple}┃"${RESET_COLOR}
# echo -e ${Purple} "┃ ████████╗    ██╔══╝   ██╔██╗ ██║   ██║██║  ██║██║██╔══██║    ██║   ██║╚════██║ ┃ ${Cyan}  ${Blue}Developed by : ${BIGreen}00xWolf   ${Purple}┃"${RESET_COLOR}
# echo -e ${Purple} "┃ ╚██╔═██╔╝    ███████╗██╔╝ ██╗╚██████╔╝██████╔╝██║██║  ██║    ╚██████╔╝███████║ ┃ ${Cyan}  ${Blue}GitHub : ${BIGreen}@mmsaeed509     ${Purple}┃"${RESET_COLOR}
# echo -e ${Purple} "┃  ╚═╝ ╚═╝     ╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚═════╝ ╚═╝╚═╝  ╚═╝     ╚═════╝ ╚══════╝ ┃ ${Cyan}﫥 ${BIGreen}Cyb3rTh1eveZ Team        ${Purple}┃"${RESET_COLOR}
# echo -e ${Purple} "┃                                                                                ┃                             ┃"${RESET_COLOR}
# echo -e ${Purple} "┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┻━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"${RESET_COLOR}

echo -e "Welcome back ${BIRed}Mr.${USER}!! \n"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh. #
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# change sudo prompt #
export SUDO_PROMPT="[] Enter sudo Password, Mr.${USER}: "
