#!/bin/bash

mkdir ${HOME}/.goto
mkdir ${HOME}/.goto/projects
touch ${HOME}/.goto/active-project

# add commands
ln -s /usr/local/opt/goto/bin/* /usr/local/bin/

# add init_script to.bash_profile:
echo "source start_goto" >> ${HOME}/.bash_profile

# make goto ready -- now.
source start_goto

# add your first project
project add goto

# set the context to this project
project goto

# add your first shortcuts
goto add code /usr/local/opt/goto
goto add goto https://github.com/technocake/goto
goto add github https://github.com/technocake/goto