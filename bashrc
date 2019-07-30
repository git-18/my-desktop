
alias kubetools='docker run -it --rm  -v /var/run/docker.sock:/var/run/docker.sock -v ~/.azure:/root/.azure -v $PWD:/kubetools -v ~/.kube:/root/.kube --rm --network=host --workdir /kubetools aimvector/kube-tools:latest'

alias flushdns='sudo systemd-resolve --flush-caches'

#zoom contained.
alias zoom='xhost local:root
docker run -d --rm -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY --device /dev/video0:/dev/video0 --device /dev/snd:/dev/snd --device /dev/dri:/dev/dri -v /dev/shm:/dev/shm aimvector/zoom-us zoom'


#chrome contained.
alias chrome='xhost local:root
docker run -d --net host -v ~/containers/chrome/:/home/chrome/chrome-profile -v /var/run/dbus:/var/run/dbus --security-opt seccomp=~/seccomp-chrome.json -v /etc/localtime:/etc/localtime:ro -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY -v ~/Downloads:/home/chrome/Downloads --device /dev/snd:/dev/snd --device /dev/dri -v /dev/shm:/dev/shm --name chrome aimvector/chrome'


#skype contained.
alias skype='xhost local:root
docker run -it --rm -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY -v ~/.Skype:/home/skype/.Skype --device /dev/snd:/dev/snd --device /dev/video0 --name skype aimvector/skype'


#postman contained.
alias postman='xhost local:root
docker run -d --rm -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY --net host --name postman aimvector/postman'

#vbox contained.
alias vbox='xhost local:root
docker run -d --rm -v /tmp/.X11-unix:/tmp/.X11-unix -v /data/vbox:/hdd -v /dev/vboxdrv:/dev/vboxdrv -e DISPLAY=unix$DISPLAY --privileged -v /dev/:/dev/ -v ~/Applications/contained/vbox/machines:"/root/VirtualBox VMs" -v ~/Applications/contained/vbox/.config:/root/.config/VirtualBox -v ~/Downloads:/images --name virtualbox aimvector/virtualbox'


#firefox contained.
alias firefox='xhost local:root
docker run -d --rm --net host -v /tmp/.X11-unix:/tmp/.X11-unix -v ~/Applications/contained/firefox/data:/root/.mozilla -e DISPLAY=unix$DISPLAY -v ~/Downloads:/root/Downloads --device /dev/snd --device /dev/dri -v /dev/shm:/dev/shm --name firefox aimvector/firefox'


#shutter contained.
alias shutter='xhost local:root
docker run -d --rm -v /tmp/.X11-unix:/tmp/.X11-unix -v ~/Applications/contained/shutter/.shutter/:/root/.shutter -v ~/Applications/contained/shutter/plugins/:/usr/share/shutter/resources/system/plugins -e DISPLAY=unix$DISPLAY -v ~/Pictures:/home/root/Pictures --name shutter aimvector/shutter'

#powershell contained.
alias powershell='docker run -it --rm --net host jess/powershell'


#vscode contained.
alias vs='xhost local:root
docker run -d --rm -v /tmp/.X11-unix:/tmp/.X11-unix -v ~/Downloads:/home/user/Downloads -v ~/containers/vscode/:/home/user -v ~/git:/home/user/git -e DISPLAY=unix$DISPLAY --device /dev/dri -v /dev/shm:/dev/shm aimvector/vscode'


d () {
  args=${1:.}
  xhost local:root
  docker run -d --rm -v /tmp/.X11-unix:/tmp/.X11-unix -v ~/Downloads:/home/user/Downloads -v ~/Applications/contained/vscode/:/home/user -v ~/git:/home/user/git -v ~/personal/git:/home/user/personal/git -e DISPLAY=unix$DISPLAY --device /dev/dri -v /dev/shm:/dev/shm aimvector/vscode $args
}
alias test='d()'

#peek contained.
alias peek='xhost local:root
docker run --rm -d -v /tmp/.X11-unix:/tmp/.X11-unix --device /dev/video0:/dev/video0 -v /var/run:/var/run --device /dev/dri -v $HOME/Pictures:/home/root/Pictures -e DISPLAY=unix$DISPLAY aimvector/peek peek'

#meld containerd.
alias meld='xhost local:root
docker run -d --rm --net host -v /tmp/.X11-unix:/tmp/.X11-unit -v /var/run/dbus:/var/run/dbus -e DISPLAY=unix$DISPLAY -v $PWD:/root/compare aimvector/meld meld'


#pandoc contained.
alias pandoc='docker run -it --rm -v $PWD:/convert aimvector/pandoc'

#fiddler contained.
alias fiddler='xhost local:root
docker run -d --name fiddler --rm -v /etc/localtime:/etc/localtime:ro -v /tmp/.X11-unix:/tmp/.X11-unix -v ~/Applications/contained/fiddler/:/root/.mono/ --device /dev/dri -p 8888:8888 -v /dev/shm:/dev/shm -e DISPLAY=unix$DISPLAY aimvector/fiddler'

#vegeta contained.
alias vegeta='docker run -it --rm --net host -v ~/personal/git/my-desktop/dockerfiles/vegeta:/data aimvector/vegeta'


#ab contained.
alias ab='docker run -it --rm aimvector/ab'

#cups contained.
alias cups='xhost local:root
docker run -d --rm --net host -v /etc/localtime:/etc/localtime:ro -v /var/run/dbus:/var/run/dbus -p 631:631 --name cups-server aimvector/cups-server'

#requestbin contained.
alias requestbin='docker run -d --rm -p 8080:8080 jess/requestbin'

#gpick contained.
alias gpick='xhost local:root
docker run -d --rm -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY aimvector/gpick'

alias colorpicker=gpick
alias colorpic=gpick

#discord contained.
alias discord='xhost local:root
docker run -d --rm -v /etc/localtime:/etc/localtime:ro -v /tmp/.X11-unix:/tmp/.X11-unix -v ~/Applications/contained/discord/config:/root/.config/discord/ -e DISPLAY=unix$DISPLAY -v ~/Downloads:/home/root/Downloads --device /dev/snd:/dev/snd --device /dev/dri -v /dev/shm:/dev/shm aimvector/discord'

#slack contained.
alias slack='xhost local:root
docker run -d --rm -v /etc/localtime:/etc/localtime:ro -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY --device /dev/snd --device /dev/dri --device /dev/video0 --group-add audio --group-add video --ipc=host -v ~/Applications/contained/slack:/root/.config/Slack -v ~/Downloads:/home/root/Downloads aimvector/slack'

#sqlops contained.
alias sqlops='xhost local:root
docker run -d --rm --net host -v ~/Applications/contained/slqops/config/:/root/.config/azuredatastudio/ -v ~/Applications/contained/slqops/.azuredatastudio/:/root/.azuredatastudio/ -v /etc/localtime:/etc/localtime:ro -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY --device /dev/dri -v /dev/shm:/dev/shm aimvector/az-datastudio'


#azurestorageexplorer contained.
alias azurestorageexplorer='xhost local:root
docker run -d --net host -v /etc/localtime:/etc/localtime:ro -v /tmp/.X11-unix:/tmp/.X11-unix -v /var/run/dbus:/var/run/dbus -e DISPLAY=unix$DISPLAY --device /dev/dri -v /dev/shm:/dev/shm aimvector/azurestorageexplorer'

alias dive='docker run --rm -it -v /var/run/docker.sock:/var/run/docker.sock wagoodman/dive:latest'

#gcloud contained.
alias g='docker run -it --rm -v ~/Applications/contained/gcloud:/root/.config/gcloud -v $PWD:/work -v ~/.kube:/root/.kube --entrypoint "bash" aimvector/gcloud'
alias gcloud=g

#obs contained.
alias obs='xhost local:root
docker run -it --rm --net host --privileged -v /etc/localtime:/etc/localtime:ro -v /tmp/.X11-unix:/tmp/.X11-unix -v ~/Applications/contained/obs/:/data -v ~/.Xauthority:/root/obs-studio-portable/bin/64bit/.Xauthority -v /var/run/dbus:/var/run/dbus -e DISPLAY=unix$DISPLAY --device /dev/video0 --device /dev/snd:/dev/snd --device /dev/dri -v /dev/shm:/dev/shm --name obs aimvector/obs /bin/bash'


#jupyter contained.
alias jupyter='xhost local:root
docker run -d --rm --net host -v /etc/localtime:/etc/localtime:ro -v /tmp/.X11-unix:/tmp/.X11-unix -v ~/Applications/contained/jupyter/:/data -w /data -e DISPLAY=unix$DISPLAY -v ~/Downloads:/home/chrome/Downloads aimvector/jupyter'

#jmeter contained.
alias jmeter='xhost local:root
docker run -d --net host -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY -v ~/git:/git -v ~/personal/git:/personal/git -v ~/Downloads:/Downloads aimvector/jmeter'


#wrk contained.
alias wrk='docker run -it --rm --net host -v $PWD:/wrk aimvector/wrk'

#sysstat contained.
alias sysstat='docker run -it --rm --net host --pid host -v /etc/localtime:/etc/localtime:ro aimvector/sysstat'


#airtame contained.
alias airtame='xhost local:root
docker run -d --rm --net host --ipc host -v /etc/localtime:/etc/localtime:ro -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY --device /dev/snd:/dev/snd --device /dev/dri -v /dev/shm:/dev/shm -v /dev/bus/:/dev/bus/ --device /dev/video0:/dev/video0 aimvector/airtame'

alias wireshark='docker run -d -v $PWD:/work -w /work -v /etc/localtime:/etc/localtime:ro -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY --name wireshark jess/wireshark'

#tcpdump contained.
alias tcpdump='xhost local:root
docker run -d --rm --net host -v /etc/localtime:/etc/localtime:ro -v $PWD:/tcpdump aimvector/tcpdump'


#awscli contained.
alias awscli='docker run -it --rm -v ~/Applications/contained/awscli/:/root/.aws/ -v $PWD:/work --entrypoint "bash" aimvector/awscli'
