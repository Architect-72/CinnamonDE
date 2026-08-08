#!/bin/bash

RED="\e[1;91m"
GREEN="\e[1;92m"
RESET="\e[0m"

set -e

./scripts/install-packages.sh

./scripts/stow.sh

./scripts/yay-install.sh

./scripts/setup-plymouth.sh

./scripts/sddm.sh

sleep 10

echo -e "${GREEN} Configurations are done :D ${RESET}"

