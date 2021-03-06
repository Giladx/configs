# show current git branch + user & path colors
git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[$(tput bold)\]\[\033[38;5;32m\]\u\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\]@\[$(tput sgr0)\]\[\033[38;5;247m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\]\\$ \w\[\033[33m\]\$(git_branch)\[\033[00m\]: \[$(tput sgr0)\]"
LS_COLORS=$LS_COLORS:'di=0;32:' ; export LS_COLORS ;

# if you do not want the same coloring i use, simply snag:
#   \w\[\033[33m\]\$(git_branch)\[\033[00m\]
# and add it to your own export PS1 -- remove the leading # from line 10!
