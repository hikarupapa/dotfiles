#!/bin/bash

DOT_D="${HOME}/dotfiles"

for f in .??*
do
  ["$f" = ".git"] && continue
  ["$f" = ".gitconfig.local.template"]

  ln -snfv ${DOT_D}/${f} ${HOME}
done

echo $(tput setaf 2)Deploy dotfiles complete!. ✔︎$(tput sgr0)
