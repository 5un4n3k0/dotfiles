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
# Main Processes
# -------------------------------------------
echo "[INFO] Setting up dotfiles..."

# --- Detecting OS ---
OS="$(uname)"
case "$OS" in
	Linux)
		echo "[INFO] Linux detected"

		# --- make config directory ---
		echo "[INFO] Make ~/.config/ directory"
		mkdir ~/.config

		# --- zsh settings ---
		
		# --- alacritty settigs ---
		echo "[INFO] Make symlink ~/dotfiles/alacritty/ -> ~/.config/"
		ln -s ~/dotfiles/alacritty/ ~/.config/

		# --- tmux settings ---
		echo "[INFO] Make symlink ~/dotfiles/alacritty/ -> ~/.config/"
		ln -s ~/dotfiles/tmux/tmux/ ~/.config/
		echo "[INFO] git clone tpm for tmux -> ~/.tmux/plugins/tpm/"
		git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
		echo "[INFO] Make symlink ~/dotfiles/tmux/plugins/ -> ~/.tmux/plugins//"
		ln -s ~/dotfiles/tmux/plugins/* ~/.tmux/plugins/
		
		# --- NeoVim settings ---
		sudo apt install neovim
		echo "[INFO] Make symlink ~/dotfiles/nvim/ -> ~/.config/"
		ln -s ~/dotfiles/nvim/ ~/.config/

		;;
	Darwin)
		echo "[INFO] macOS detected"
		
		# --- make config directory ---
		echo "[INFO] Make ~/.config/ directory"
		mkdir ~/.config

		# --- zsh settings ---
		
		# --- alacritty settigs ---
		echo "[INFO] Make symlink ~/dotfiles/alacritty/ -> ~/.config/"
		ln -s ~/dotfiles/alacritty/ ~/.config/

		# --- tmux settings ---
		echo "[INFO] Make symlink ~/dotfiles/alacritty/ -> ~/.config/"
		ln -s ~/dotfiles/tmux/tmux/ ~/.config/
		echo "[INFO] git clone tpm for tmux -> ~/.tmux/plugins/tpm/"
		git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
		echo "[INFO] Make symlink ~/dotfiles/tmux/plugins/ -> ~/.tmux/plugins//"
		ln -s ~/dotfiles/tmux/plugins/* ~/.tmux/plugins/
		
		# --- NeoVim settings ---
		brew install neovim
		echo "[INFO] Make symlink ~/dotfiles/nvim/ -> ~/.config/"
		ln -s ~/dotfiles/nvim/ ~/.config/

		;;
	FreeBSD|OpenBSD)
		echo "[INFO] BSD detected"

		# --- make config directory ---
		echo "[INFO] Make ~/.config/ directory"
		mkdir ~/.config

		# --- zsh settings ---
		
		# --- alacritty settigs ---
		echo "[INFO] Make symlink ~/dotfiles/alacritty/ -> ~/.config/"
		ln -s ~/dotfiles/alacritty/ ~/.config/

		# --- tmux settings ---
		echo "[INFO] Make symlink ~/dotfiles/alacritty/ -> ~/.config/"
		ln -s ~/dotfiles/tmux/tmux/ ~/.config/
		echo "[INFO] git clone tpm for tmux -> ~/.tmux/plugins/tpm/"
		git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
		echo "[INFO] Make symlink ~/dotfiles/tmux/plugins/ -> ~/.tmux/plugins//"
		ln -s ~/dotfiles/tmux/plugins/* ~/.tmux/plugins/
		
		# --- NeoVim settings ---
		sudo pkg install neovim
		echo "[INFO] Make symlink ~/dotfiles/nvim/ -> ~/.config/"
		ln -s ~/dotfiles/nvim/ ~/.config/

		;;
	*)
		printf "${RED}[ERROR]${RESET} Unsupported OS: $OS"
		;;
esac

