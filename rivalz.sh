#!/bin/bash

BOLD=$(tput bold)
RESET=$(tput sgr0)
YELLOW=$(tput setaf 3)

print_command() {
  echo -e "${BOLD}${YELLOW}$1${RESET}"
}

cd $HOME

print_command "Installing NVM and Node..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"

if [ -s "$NVM_DIR/nvm.sh" ]; then
    . "$NVM_DIR/nvm.sh"
elif [ -s "/usr/local/share/nvm/nvm.sh" ]; then
    . "/usr/local/share/nvm/nvm.sh"
else
    echo "Error: nvm.sh not found!"
    exit 1
fi
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

print_command "Using Node version manager (nvm)..."
nvm install node
nvm use node

print_command "Installing Rivalz Cli Package..."
npm i -g rivalz-node-cli

print_command "Running Rivalz Node..."
rivalz run

echo -e '\e[40m\e[92m'

echo -e ' ##   ##   ######  #####    #####    #######  ##    ## '
echo -e ' ##   ##     ##    ##  ##   ##  ##   ##       ###   ## '
echo -e ' ##   ##     ##    ##   ##  ##   ##  ##       ## #  ## '
echo -e ' #######     ##    ##   ##  ##   ##  #####    ##  # ## '
echo -e ' ##   ##     ##    ##   ##  ##   ##  ##       ##   ### '
echo -e ' ##   ##     ##    ##  ##   ##  ##   ##       ##    ## '
echo -e ' ##   ##   ######  #####    #####    #######  ##    ## '
                                                      
echo -e '        #####     #######  ##     ## '
echo -e '       ##   ##    ##       ###   ### ' 
echo -e '       ##         ##       ## # # ## '  
echo -e '       ##  #####  #####    ##  #  ## '  
echo -e '       ##   ## #  ##       ##     ## '  
echo -e '       ##   ## #  ##       ##     ## '  
echo -e '        #####     #######  ##     ## '

echo -e ' Wellcome To Hidden Gem Node Running Installation Guide '

echo -e '\e[0m'
