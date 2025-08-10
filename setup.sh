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
	printf "[ ${GREEN}INFO${RESET} ] $1"
}

# --- put error message ---
puerror ()
{
	printf "[ ${RED}ERROR${RESET} ] $1"
{


# -------------------------------------------
# Main Processes
# -------------------------------------------
# puinfo "Setting up dotfiles..."
puinfo "Setting up dotfiles..."

# --- Detecting OS ---
OS="$(uname)"
case "$OS" in
	Linux)
		puinfo "Linux detected"

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
		sudo apt install tmux
		puinfo "Make symlink ~/dotfiles/tmux/.tmux.conf/ -> ~/.tmux.conf"
		ln -s ~/dotfiles/tmux/.tmux.conf ~/.tmux.conf
		puinfo "Make symlink ~/dotfiles/tmux/tmux/ -> ~/.config/"
		ln -s ~/dotfiles/tmux/tmux/ ~/.config/
		puinfo "git clone tpm for tmux -> ~/.tmux/plugins/tpm/"
		git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
		puinfo "Make symlink ~/dotfiles/tmux/plugins/ -> ~/.tmux/plugins//"
		ln -s ~/dotfiles/tmux/plugins/* ~/.tmux/plugins/
		
		# --- NeoVim settings ---
		sudo apt install neovim
		puinfo "Make symlink ~/dotfiles/nvim/ -> ~/.config/"
		ln -s ~/dotfiles/nvim/ ~/.config/

		;;
	Darwin)
		puinfo "macOS detected"
		
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
		brew install tmux
		puinfo "Make symlink ~/dotfiles/tmux/.tmux.conf/ -> ~/.tmux.conf"
		ln -s ~/dotfiles/tmux/.tmux.conf/ ~/.tmux.conf
		puinfo "Make symlink ~/dotfiles/tmux/tmux/ -> ~/.config/"
		ln -s ~/dotfiles/tmux/tmux/ ~/.config/
		puinfo "git clone tpm for tmux -> ~/.tmux/plugins/tpm/"
		git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
		puinfo "Make symlink ~/dotfiles/tmux/plugins/ -> ~/.tmux/plugins//"
		ln -s ~/dotfiles/tmux/plugins/* ~/.tmux/plugins/
		
		# --- NeoVim settings ---
		brew install neovim
		puinfo "Make symlink ~/dotfiles/nvim/ -> ~/.config/"
		ln -s ~/dotfiles/nvim/ ~/.config/

		;;
	FreeBSD|OpenBSD)
		puinfo "BSD detected"

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
		sudo pkg install tmux
		puinfo "Make symlink ~/dotfiles/tmux/.tmux.conf/ -> ~/.tmux.conf"
		ln -s ~/dotfiles/tmux/.tmux.conf/ ~/.tmux.conf
		puinfo "Make symlink ~/dotfiles/tmux/tmux/ -> ~/.config/"
		ln -s ~/dotfiles/tmux/tmux/ ~/.config/
		puinfo "git clone tpm for tmux -> ~/.tmux/plugins/tpm/"
		git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
		puinfo "Make symlink ~/dotfiles/tmux/plugins/ -> ~/.tmux/plugins/"
		ln -s ~/dotfiles/tmux/plugins/* ~/.tmux/plugins/
		
		# --- NeoVim settings ---
		sudo pkg install neovim
		puinfo "Make symlink ~/dotfiles/nvim/ -> ~/.config/"
		ln -s ~/dotfiles/nvim/ ~/.config/

		;;
	*)
		puerror "Unsupported OS: $OS"
		;;
esac

