alias seis="ssh -Y vegahag@seis.ivt.ntnu.no"
alias promax="ssh -Y vegahag@promax.ipt.ntnu.no"
alias rose="ssh vegahag@iptibm1.ipt.ntnu.no" #NTNU passwd
alias venstad="ssh venstad@129.241.69.11"
alias kongull="ssh vegahag@kongull.hpc.ntnu.no" 
alias maur="ssh -Y vegahag@maur.hpc.ntnu.no"
alias pi="ssh pi@129.241.146.109"
alias msim="ssh maur_load@pet.geo.ntnu.no"
alias toregpu="ssh -Y toresive@129.241.69.154"

alias officefarm="xfreerdp -g 3440x1400 --ignore-certificate -d win.ntnu.no -u vegahag --plugin cliprdr --plugin rdpdr --data printer:felles_alternativ disk:Dropbox:"/home/vegahag/Dropbox" -- officefarm.ntnu.no"
alias winword="xfreerdp -g 768x1024 --ignore-certificate -d win.ntnu.no -u vegahag --app --plugin rail --data '||WINWORD' -- officefarm.ntnu.no"
alias outlook="xfreerdp -g 768x1024 --ignore-certificate -d win.ntnu.no -u vegahag --app --plugin rail --data '||OUTLOOK' -- officefarm.ntnu.no"

alias purgecsim="rm -rf csim/ && git clone git@bitbucket.org:seiscode/csim.git"
alias purgensim="rm -rf nsim/ && git clone git@bitbucket.org:geofysikk/nsim.git"

alias roth="xrandr --output DP-4 --rotate normal"
alias rotv="xrandr --output DP-4 --rotate left"

alias open="xdg-open $1 &>/dev/null"

alias latexpdf="/usr/sbin/pdflatex.sh"
alias snip="gnome-screenshot -i"

alias pdfjoin="pdfjoin --rotateoversize false"
alias za="zathura"
