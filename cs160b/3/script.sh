#!/bin/bash
# Name: Putnam
# File: .shell_prompt
# Date: 2008-11-01
# Usage: source in shell startup: . ~/.shell_prompt

# Color escape sequences
Black='\e[0;30m'
purple='\e[0;35m'
lightpurple='\e[1;35m'
red='\e[0;31m'
lightred='\e[1;31m'
blue='\e[0;34m'
lightblue='\e[1;34m'
cyan='\e[0;36m'
lightcyan='\e[1;36m'
lightgray='\e[0;37m'
darkgray='\e[1;30m'
yellow='\e[1;33m'
NC='\e[0m' # No Color
# Do it!
echo -e "
${yellow}FFFFFFFFFFFFFFFFFFFFFF     OOOOOOOOO             GGGGGGGGGGGGG
F::::::::::::::::::::F   OO:::::::::OO        GGG::::::::::::G
F::::::::::::::::::::F OO:::::::::::::OO    GG:::::::::::::::G
FF::::::FFFFFFFFF::::FO:::::::OOO:::::::O  G:::::GGGGGGGG::::G
  F:::::F       FFFFFFO::::::O   O::::::O G:::::G       GGGGGG
  F:::::F             O:::::O     O:::::OG:::::G
  F::::::FFFFFFFFFF   O:::::O     O:::::OG:::::G
  F:::::::::::::::F   O:::::O     O:::::OG:::::G    GGGGGGGGGG
  ${lightcyan}F:::::::::::::::F   O:::::O     O:::::OG:::::G    G::::::::G
  F::::::FFFFFFFFFF   O:::::O     O:::::OG:::::G    GGGGG::::G
  F:::::F             O:::::O     O:::::OG:::::G        G::::G
  F:::::F             O::::::O   O::::::O G:::::G       G::::G
FF:::::::FF           O:::::::OOO:::::::O  G:::::GGGGGGGG::::G
F::::::::FF            OO:::::::::::::OO    GG:::::::::::::::G
F::::::::FF              OO:::::::::OO        GGG::::::GGG:::G
FFFFFFFFFFF                OOOOOOOOO             GGGGGG   GGGG
${NC}"

sleep 2
# clear # uncomment this to clear the screen after 2 seconds
export PS1='
{{{ \u@\H ]}}}
\w
$ '
set -o emacs