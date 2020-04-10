#!/usr/bin/env bash
# Instalador de config-micro - https://github.com/czayas/config-micro

pushd ~/.config/micro/ >/dev/null || exit

for archivo in bindings.json settings.json init1.lua init2.lua
do
    if [[ -e $archivo ]]
    then
        mv $archivo $archivo.backup
    fi
    wget https://raw.githubusercontent.com/czayas/config-micro/master/$archivo
done

popd >/dev/null || exit
