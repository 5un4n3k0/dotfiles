#!/bin/sh
# -------------------------------------------
#           _                    _     
#  ___  ___| |_ _   _ _ __   ___| |__  
# / __|/ _ \ __| | | | '_ \ / __| '_ \ 
# \__ \  __/ |_| |_| | |_) |\__ \ | | |
# |___/\___|\__|\__,_| .__(_)___/_| |_|
#                    |_|               
# 
# -------------------------------------------

# -------------------------------------------
# Constant Values
# -------------------------------------------
# --- Color Escape Code ---
RED="\033[31m"
GREEN="\033[32m"
RESET="\033[0m"


# -------------------------------------------
# Internal Functions
# -------------------------------------------

# --- put info message ---
puinfo ()
{
	printf "[ ${GREEN}INFO${RESET} ] $1\n"
}

# --- put error message ---
puerror ()
{
	printf "[ ${RED}ERROR${RESET} ] $1\n"
}


# -------------------------------------------
# Main Processes
# -------------------------------------------
# puinfo "Setting up dotfiles..."
puinfo "Setting up dotfiles..."

# --- Detecting OS ---
OS="$(uname)"
case "$OS" in
	Linux|Darwin|FreeBSD|OpenBSD)
		puinfo "$OS detected"

		# --- Set package manager ---
		if [ $OS = "Linux" ]; then
			MANAGER="apt"
		elif [ $OS = "Darwin" ]; then
			MANAGER="brew"
		elif [ $OS = "FreeBSD" ] || [ $OS = "OpenBSD" ]; then
			MANAGER="pkg"
		fi

		# --- make config directory ---
		puinfo "Make ~/.config/ directory"
		mkdir ~/.config

		# --- zsh settings ---
		puinfo "Make symlink ~/dotfiles/zsh/.zshrc -> ~/.zshrc"
		ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc
		puinfo "Make symlink ~/dotfiles/zsh/zsh/ -> ~/.config/"
		ln -s ~/dotfiles/zsh/zsh/ ~/.config/
		puinfo "Make symlink ~/dotfiles/zsh/sheldon/ -> ~/.config/"
		ln -s ~/dotfiles/zsh/sheldon/ ~/.config/
		
		# --- alacritty settigs ---
		puinfo "Make symlink ~/dotfiles/alacritty/ -> ~/.config/"
		ln -s ~/dotfiles/alacritty/ ~/.config/

		# --- tmux settings ---
		puinfo "Install tmux"
		eval "sudo $MANAGER install tmux"
		puinfo "Make symlink ~/dotfiles/tmux/.tmux.conf/ -> ~/.tmux.conf"
		ln -s ~/dotfiles/tmux/.tmux.conf ~/.tmux.conf
		puinfo "Make symlink ~/dotfiles/tmux/tmux/ -> ~/.config/"
		ln -s ~/dotfiles/tmux/tmux/ ~/.config/
		puinfo "git clone tpm for tmux -> ~/.tmux/plugins/tpm/"
		git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
		puinfo "Make symlink ~/dotfiles/tmux/plugins/ -> ~/.tmux/plugins//"
		ln -s ~/dotfiles/tmux/plugins/* ~/.tmux/plugins/
		
		# --- NeoVim settings ---
		eval "sudo $MANAGER install neovim"
		puinfo "Make symlink ~/dotfiles/nvim/ -> ~/.config/"
		ln -s ~/dotfiles/nvim/ ~/.config/

		;;
	*)
		puerror "Unsupported OS: $OS"
		;;
esac

