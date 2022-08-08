#!/bin/bash

set -eu

RED='\033[0;31m'
GREEN='\033[32;m'
BRACK='\033[30m'
BLUE='\033[34m'
GREEN_BG='\033[42;m'
NC='\033[0m'

function consent {
    echo -e "${GREEN}+-----------------------------------------------+"
    echo -e "| This script is DOTFILES written by cateiru    |"
    echo -e "|                                               |"
    echo -e "| see more: https://github.com/cateiru/dotfiles |"
    echo -e "+-----------------------------------------------+${NC}"
    echo ""
    echo -n "Install ok? [y/N]: "
    read ANSWER
    if [[ $ANSWER = [nN] ]]; then
        exit 0
    fi
}

function install_rust {
    if [[ ! $(which rustup) ]]; then
        echo -e "\n${RED}x${NC}  No Rust installed."
        curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
    fi

    echo -e "\n${GREEN}✔${NC}  Rust installed."
}

function install_and_run_package {
    cargo install []

    echo -e "\n${GREEN}✔${NC}  Package installed."
}

consent
echo -e "\n"
install_rust
