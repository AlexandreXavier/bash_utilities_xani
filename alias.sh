# Xani alias

 alias hl='~/hl19/hl'                         # HashLink directory v1.9 HAXE 4.0
 alias edit='subl .'                          # Sublimetext IDE
 alias reload='source ~/.bash_profile'        # Reload
 alias edit_profile='open -e ~/.bash_profile' # Open the profile

 alias cp='cp -iv'                            # Preferred 'cp' implementation
 alias mv='mv -iv'                            # Preferred 'mv' implementation
 alias mkdir='mkdir -pv'                      # Preferred 'mkdir' implementation
 alias ll='ls -FGlAhp'                        # Preferred 'ls' implementation
 alias lp='ls -p'
 alias la='ls -A'
 alias ld='ls -d */'
 alias less='less -FSRXc'                     # Preferred 'less' implementation
 cd() { builtin cd "$@"; ll; }               # Always list directory contents upon 'cd'
 alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
 alias ..='cd ../'                           # Go back 1 directory level
 alias ...='cd ../../'                       # Go back 2 directory levels
 alias .3='cd ../../../'                     # Go back 3 directory levels
 alias .4='cd ../../../../'                  # Go back 4 directory levels
 alias .5='cd ../../../../../'               # Go back 5 directory levels
 alias .6='cd ../../../../../../'            # Go back 6 directory levels
 alias dl='cd ~/Downloads'                   # Directory of the downloads
 alias lsd='ls -lhF ${colorflag} | grep --color=never '^d'' # List only directories
 alias edit='subl'                           # edit:   Opens any file in sublime editor
 alias f='open -a Finder ./'                 # f:      Opens current directory in MacOS Finder
 alias ~='cd ~'                              # ~:            Go Home
 alias c='clear'                             # c:            Clear terminal display
 alias e='exit'                              # e:            Exit terminal
 alias which='type -all'                     # which:        Find executables
 alias path='echo -e ${PATH//:/\\n}'         # path:         Echo all executable Paths
 alias show_options='shopt'                  # Show_options: display bash options settings
 alias fix_stty='stty sane'                  # fix_stty:     Restore terminal settings when screwed up
 alias cic='set completion-ignore-case On'   # cic:           Make tab-completion case-insensitive
 alias Desktop='cd ~/Desktop && ls'          # goto desktop and ls
 alias DT='tee ~/Desktop/terminalOut.txt'    # DT:           Pipe content to file on MacOS Desktop
 alias ps='ps -ax'                           # ps:           To view all processes
 alias msg='tail -f /var/log/system.log'     # MacOS log
 alias flush='dscacheutil -flushcache'        # Flush your dns cache

 mcd () { mkdir -p "$1" && cd "$1"; }        # mcd:          Makes new Dir and jumps inside
 trash () { command mv "$@" ~/.Trash ; }     # trash:        Moves a file to the MacOS trash
 ql () { qlmanage -p "$*" >& /dev/null; }    # ql:           Opens any file in MacOS Quicklook Preview

# Node web kit
alias nw='/Applications/nwjs.app/Contents/MacOS/nwjs'

# Golang cmd for my mac
alias go='Go'

# Canvas program develop in node for design from code
alias cv='canvas-sketch'            #canvas-sketch [file] [opts] -- [browserifyArgs]

# PostgreSQL controlling
alias pgstart='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias  pgstop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'

# MongoDB
alias mongostart='mongod run'

# Redis
alias redisstart='redis-server /usr/local/etc/redis.conf'



