# Gives some chopped down CPU info
function cpuinfo {
  cat /proc/cpuinfo|grep -P 'processor|MHz|model name|cache size'|sed 's/processor/\nprocessor/'
}

# Checks the syntax of all the ruby files in the current and sub dirs
rcheck() {
  find . -name \*.rb -exec ruby -c {} \;
}

susvc() {
  sudo service $*;
}

hax() {

  if [ "$1" = "" ]; then 
    cd "$HOME/src";
    return;
  fi;

  cd `find "$HOME/src" -maxdepth 1 -name "*${1}*" -type d|sort|head -1`;
}

# Shows all the SSH connections both out (ssh) and in (sshd)
where() {
  netstat -pn 2>/dev/null|grep ssh|tr -s ' ' ' ' |cut -d' ' -f4-|sed 's/ESTABLISHED //'|column -t;
}

# Make apt-get quicker
agi() {
  apt-get install $*
}

ags() {
  apt-cache search $*
}

agp() {
  apt-file search $*
}
