# ----------------------------------
#        _             _           
#  _ __ | |_   _  __ _(_)_ __  ___ 
# | '_ \| | | | |/ _` | | '_ \/ __|
# | |_) | | |_| | (_| | | | | \__ \
# | .__/|_|\__,_|\__, |_|_| |_|___/
# |_|            |___/             
# ----------------------------------

# --- mise ---
if command -v mise >/dev/null 2>&1; then
    eval "$(mise activate zsh)"

    # python versions
    mise settings add idiomatic_version_file_enable_tools "[]"
fi

# --- sheldon ---
if command -v sheldon >/dev/null 2>&1; then
    eval "$(sheldon source)"

    # powerlevel10k
    if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
      source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
    fi
    [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

    # zsh-completions
    zstyle ':completion:*' menu select
    zstyle ':completion:*:descriptions' format '[%d]'
    zstyle ':fzf-tab:*' switch-group ','
    autoload -Uz compinit
    compinit
fi

# --- zoxide ---
if command -v zoxide >/dev/null 2>&1; then
    eval "$(zoxide init zsh)"
fi

