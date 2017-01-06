#Sebs computer stuff
alias vim='mvim -v'
alias ..='cd ..'
alias ...='cd ../..'
alias less='less -FX -R'
alias ls='ls -hF'
alias ll='ls -l'
alias la='ls -A'
alias lla='ll -A'
alias lld='ll -d'
alias lltime='ll -tr'
alias llsize='ll -Sr'

alias egrep='egrep --color=auto'
alias grep='egrep'
alias hist='history | tail -30'

# Ecobee rig
alias usb_connect='screen /dev/cu.usbserial-DN01XFY9 115200 -L'
alias py='python3'

# Pass is Fin1&Swe2!
alias raspi_ssh='ssh pi@10.10.16.31'

# Here we have commands for simulated sensors
# More at https://redmine.ecobee.com/projects/ecobee/wiki/Remote_Sensor_Simulator
alias sensor_simList='curl http://10.10.2.22:6869/getall'

# Uncategorized aliases
alias voice_scripts='cd ~/qa/automation/tests/firmware/apollo_voice'
alias gs='git status'
alias gc='git commit'
alias reddit='rtv'
alias resetAll='rm thermostat3.xml* lastOnTimes homekit.json hvacTempData.xml'
alias gd='git diff'
alias usb_c='screen /dev/cu.usbserial-FTFMFMVK 115200 -L'
alias gl='
git log --graph --abbrev-commit --decorate --format=format:"%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)" --all'
alias sl='ls'
alias gti='git'
