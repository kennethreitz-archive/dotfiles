# completion
autoload -U compinit
compinit

# automatically enter directories without cd
setopt 	 auto_cd nobeep listpacked nocheckjobs alwaystoend sharehistory
setopt   notify globdots correct pushdtohome cdablevars autolist
setopt   correctall autocd recexact longlistjobs
setopt   autoresume histignoredups pushdsilent noclobber
setopt   autopushd pushdminus extendedglob rcquotes mailwarning
unsetopt bgnice autoparamslash

zstyle ':completion:*' hosts $(awk '/^[^#]/ {print $2 $3" "$4" "$5}' /etc/hosts | grep -v ip6- && grep "^#%" /etc/hosts | awk -F% '{print $2}')
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*:*:-subscript-:*' tag-order indexes parameters
zstyle ':completion:*:processes' command 'ps -o pid,s,nice,stime,args'
zstyle ':completion:*:urls' local 'www' '/var/www/htdocs' 'Sites'
zstyle '*' hosts $hosts

zstyle ':completion:*:*:(^rm):*:*files' ignored-patterns '*?.o' '*?.c~' \
    '*?.old' '*?.pro' '*?.pyc' '.svn'

zstyle ':completion:*:ssh:*' tag-order \
   users 'hosts:-host hosts:-domain:domain hosts:-ipaddr"IP\ Address *'
zstyle ':completion:*:ssh:*' group-order \
   hosts-domain hosts-host users hosts-ipaddr

zmodload zsh/complist
autoload -U compinit && compinit

_force_rehash() {
    (( CURRENT == 1 )) && rehash
     return 1   # Because we didn't really complete anything
  }
  zstyle ':completion:::::' completer _force_rehash _complete _approximate
  zstyle -e ':completion:*:approximate:*' max-errors 'reply=( $(( ($#PREFIX + $#SUFFIX) / 3 )) )'
  zstyle ':completion:*:descriptions' format "- %d -"
  zstyle ':completion:*:corrections' format "- %d - (errors %e})"
  zstyle ':completion:*:default' list-prompt '%S%M matches%s'
  zstyle ':completion:*' group-name ''
  zstyle ':completion:*:manuals' separate-sections true
  zstyle ':completion:*:manuals.(^1*)' insert-sections true
  zstyle ':completion:*' menu select
  zstyle ':completion:*' verbose yes