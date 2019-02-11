#List processes owned by my user:
my_ps() { ps $@ -u $USER -o pid,%cpu,%mem,start,time,bsdtime,command ; }

#Makes new Dir and jumps inside
mcd () { mkdir -p "$1" && cd "$1"; }

# Always list directory contents upon 'cd'
cd() { builtin cd "$@"; ll; }

#Moves a file to the MacOS trash
trash () { command mv "$@" ~/.Trash ; }

#Opens any file in MacOS Quicklook Preview
ql () { qlmanage -p "$*" >& /dev/null; }

#sTo create a ZIP archive of a folder
zipd () { zip -r "$1".zip "$1" ; }
