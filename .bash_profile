alias ls="ls -aG"
alias gs="git status"
alias gc="git checkout"
alias gf="git fetch"
alias gr="git rebase"
alias subupdate="git submodule update --recursive --init"
alias subsync="git submodule sync --recursive"
alias cwd='printf "%q\n" "$(pwd)"'
alias ..="cd .."
alias ..2="cd ../.."
alias ..3="cd ../../.."
alias ..4="cd ../../../.."
#alias for frequently used directory
alias tow="cd /Users/wenyuzhang/Workspace/tow"
alias gameserver="cd /Users/wenyuzhang/Workspace/game_server"
alias webapp="cd /Users/wenyuzhang/Workspace/webapp"
alias dragons="cd /Users/wenyuzhang/Workspace/dragons3d"
alias home="cd ~"
#change default vim 
alias vim="/usr/local/Cellar/macvim/8.0-145_1/bin/mvim -v"

set -o vi
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi


# The next line updates PATH for the Google Cloud SDK.
#source '/Users/wenyuzhang/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
#source '/Users/wenyuzhang/google-cloud-sdk/completion.bash.inc'

export PYTHONPATH="$PYTHONPATH:/usr/local/google_appengine"

export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_91.jdk/Contents/Home"

# add general tools
export PATH="/usr/local/opt/openssl/bin:$PATH:/Users/wenyuzhang/Workspace/common_tools/:/usr/local/lib/"

# export EDITOR
export EDITOR="/usr/local/Cellar/macvim/8.0-134/bin/mvim -v"


# git branch
#export GITAWAREPROMPT=~/.bash/git-aware-prompt
#source "${GITAWAREPROMPT}/main.sh"
#export PS1="\u@\h \W \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "

# git branch verion 2
function parse_git_branch_and_add_brackets {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\ \[\1\]/'
  }
PS1="\h:\W \u\[\033[0;32m\]\$(parse_git_branch_and_add_brackets) \[\033[0m\]\$ "

# make parent directories while creating new files
ptouch() {
  for p in "$@"; do
    _dir="$(dirname -- "$p")"
    [ -d "$_dir" ] || mkdir -p -- "$_dir"
    touch -- "$p"
  done
}

# launch ssh-agent
ssh-add -K /Users/wenyuzhang/.ssh/id_rsa

# remaining


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/wenyuzhang/google-cloud-sdk/path.bash.inc' ]; then source '/Users/wenyuzhang/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/wenyuzhang/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/wenyuzhang/google-cloud-sdk/completion.bash.inc'; fi
