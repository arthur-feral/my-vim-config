#!/bin/bash

installTimestamp=$(date +%s)
vimFolder="$HOME/.vim"
scriptwd="`dirname \"$0\"`"
scriptwd="`( cd \"$scriptwd\" && pwd )`"
if [ -z "$scriptwd" ] ; then
  exit 1  # fail
fi

if [ -d $vimFolder ]; then
  if [[ -L $vimFolder]]
  then
    `rm -R $vimFolder`
  else
    `mv $vimFolder "$vimFolder.$installTimestamp.bak"`
  fi
fi


if [ -f "$HOME/.vimrc" ]; then
  if [[ -L "$HOME/.vimrc"]]
  then
    `rm "$HOME/.vimrc"`
  else
    `mv "$HOME/.vimrc" "$HOME/.vimrc.$installTimestamp.bak"`
  fi
fi

`ln -s $scriptwd $vimFolder`
`ln -s "$scriptwd/.vimrc" "$HOME/.vimrc"`


#`cp -R $scriptwd $vimFolder`
#`mv "$vimFolder/.vimrc" "$HOME/.vimrc"`

#pluginsList="$scriptwd/plugins"
#echo $pluginsList

