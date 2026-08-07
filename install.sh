#!/usr/bin/env sh

set -eu

repo_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
config_home=${XDG_CONFIG_HOME:-"$HOME/.config"}
target="$config_home/tmux"

if [ "$repo_dir" = "$target" ]; then
	printf '%s\n' "tmux config is already installed at $target"
	exit 0
fi

if [ -e "$target" ]; then
	printf '%s\n' "Refusing to replace existing path: $target" >&2
	exit 1
fi

mkdir -p "$config_home"
ln -s "$repo_dir" "$target"
printf '%s\n' "Linked $target -> $repo_dir"
