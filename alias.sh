# Xani alias

#HAXE
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

# Mute/Unmute the system volume. Plays nice with all other volume settings.
alias mute="osascript -e 'set volume output muted true'"
alias unmute="osascript -e 'set volume output muted false'"

# File and Folder management
alias numFiles='echo $(ls -1 | wc -l)'   # numFiles:  Count of non-hidden files in current dir
alias make1mb='mkfile 1m ./1MB.dat'      # make1mb:   Creates a file of 1mb size (all zeros)
alias make5mb='mkfile 5m ./5MB.dat'      # make5mb:   Creates a file of 5mb size (all zeros)
alias make10mb='mkfile 10m ./10MB.dat'   # make10mb:  Creates a file of 10mb size (all zeros)

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


 # System monitoring
 alias topcpu='ps aux | sort -n +2 | tail -10'  # top 10 cpu processes
 alias topmem='ps aux | sort -n +3 | tail -10'  # top 10 memory processes

 # Empty the Trash on all mounted volumes and the main HDD
 # Also, clear Apple’s System Logs to improve shell startup speed
 alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; speedup"

 #   lr:  Full Recursive Directory Listing
 #   ------------------------------------------
 #alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/   '\'' | less'

 # Blender
 #alias blender= '/Applications/Blender/blender.app/Contents/MacOS/blender'

 # Networking
 #alias myip='curl adentro.info'                     # myip:         Public facing IP Address site adentro.info
 alias netCons='lsof -i'                             # netCons:      Show all open TCP/IP sockets
 alias flushDNS='dscacheutil -flushcache'            # flushDNS:     Flush out the DNS Cache
 alias lsock='sudo /usr/sbin/lsof -i -P'             # lsock:        Display open sockets
 alias lsockU='sudo /usr/sbin/lsof -nP | grep UDP'   # lsockU:       Display only open UDP sockets
 alias lsockT='sudo /usr/sbin/lsof -nP | grep TCP'   # lsockT:       Display only open TCP sockets
 alias ipInfo0='ipconfig getpacket en0'              # ipInfo0:      Get info on connections for en0
 alias ipInfo1='ipconfig getpacket en1'              # ipInfo1:      Get info on connections for en1
 alias openPorts='sudo lsof -i | grep LISTEN'        # openPorts:    All listening connections
 alias showBlocked='sudo ipfw list'                  # showBlocked:  All ip
 alias fastping='ping -c 100 -s.2'
 alias whois='whois -h whois-servers.net'            #Whois lookups
 alias ports='netstat -tulanp'                       #show opens ports

# IP addresses
 alias pubip="dig +short myip.opendns.com @resolver1.opendns.com"
 alias localip="sudo ifconfig | grep -Eo 'inet (addr:)?([0-9]*\\.){3}[0-9]*' | grep -Eo '([0-9]*\\.){3}[0-9]*' | grep -  v '127.0.0.1'"
 alias ips="sudo ifconfig -a | grep -o 'inet6\\? \\(addr:\\)\\?\\s\\?\\(\\(\\([0-9]\\+\\.\\)\\{3\\}[0-9]\\+\\)\\|[a-fA-  F0-9:]\\+\\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

 # View HTTP traffic
 alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
 alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\\: .*|GET \\/.*\""

 # vhosts
 alias hosts='sudo vim /etc/hosts'

 #   ii:  display useful host related informaton
 #   -------------------------------------------------------------------
     ii() {
                 echo -e "\nYou are logged on ${RED}$HOST"
                         echo -e "\nAdditionnal information:$NC " ; uname -a
                                 echo -e "\n${RED}Users logged on:$NC " ; w -h
                                         echo -e "\n${RED}Current date :$NC " ; date
                                                 echo -e "\n${RED}Machine stats :$NC " ; uptime
                                                         echo -e "\n${RED}Current network location :$NC " ; scselect
                                                                 echo -e "\n${RED}Public facing IP Address :$NC " ;myip
                                                                         #echo -e "\n${RED}DNS Configuration:$NC " ;     scutil --dns
                                                                                 echo
                                                                                     }


# {{{
 # Node Completion - Auto-generated, do not touch.
 shopt -s progcomp
 for f in $(command ls ~/.node-completion); do
   f="$HOME/.node-completion/$f"
   test -f "$f" && . "$f"
 done
 # }}}



