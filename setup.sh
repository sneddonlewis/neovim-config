#!/bin/bash

nvim_config="${XDG_CONFIG_HOME:-$HOME/.config}/nvim"

rm -rf "$nvim_config"

mkdir -p "$nvim_config"

cp -R ./* "$nvim_config"

nvim --headless "+Lazy! sync" +qa

