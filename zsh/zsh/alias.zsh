# ----------------------
#        _ _           
#   __ _| (_) __ _ ___ 
#  / _` | | |/ _` / __|
# | (_| | | | (_| \__ \
#  \__,_|_|_|\__,_|___/
# ----------------------

# --- ls ---
alias ll="ls -l"
alias la="ls -a"
alias ld="ls -ld"
alias li="ls -li"
alias lt="ls -t"
alias lla="ls -la"
alias lai"ls -lai"
alias llt="ls -lt"
alias llat="ls -lat"
alias lait="ls -ait"

if command -v eza >/dev/null 2>&1; then
    alias ls="eza"
    alias lt="ls -snew"
    alias llt="ls -l -snew"
    alias llat="ls -la -snew"
    alias lait="ls -ai -snew"
fi


# --- grep ---
alias grep="grep --color=auto"


# --- diff ---
alias diff="diff --color=auto"


# --- ip ---
alias ip="ip --color=auto"


# --- git ---
alias gia="git add"
alias gic="git commit -m"
alias gip="git push"
alias gis="git status"
alias gib="git branch"
alias gich="git checkout"
alias gicl="git clone"

# --- NeoVim ---
alias v="nvim"

