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
    alias lt="eza -snew"
    alias llt="eza -l -snew"
    alias llat="eza -la -snew"
    alias lait="ls -ai -snew"
fi

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

# 
