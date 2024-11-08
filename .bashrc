# Set command prompt using 24 bit colors.
# Requires git-prompt.sh in $HOME.
cname='125;206;250'
cdir='108;159;164'
code_color_name="\x1b[38;2;${cname}m"
code_color_dir="\x1b[38;2;${cdir}m"
code_color_reset='\x1b[0m'
c_name=$(printf "${code_color_name}")
c_dir=$(printf "${code_color_dir}")
c_rst=$(printf "${code_color_reset}")
source $HOME/git-prompt.sh
export GIT_PS1_SHOWCOLORHINTS=1
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\[${c_name}\]\u\[${c_rst}\]@\[${c_name}\]\h\[${c_rst}\] \[${c_dir}\]\w\[${c_rst}\]\]$(__git_ps1 " [%s]")\n    $ '
