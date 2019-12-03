#!/bin/bash
mdp="test"
DIR=$(pwd)/images
[ -d $DIR ] && echo "$DIR exist" || echo "$DIR does not exist"


if [ -d "$DIR" ]; then
    mv $DIR $(pwd)/.images
elif [ ! -d $(pwd)/.images ]; then
    echo "creation du fichier secret images"
    mkdir -p images
elif [ -d $(pwd)/.images ]; then
    echo "ecris ton mot de passe"
    read -s intputPass
    if [ $mdp == $intputPass ]; then
        mv $(pwd)/.images $(pwd)/images
    else
        echo "mauvais mot de passe sorry"
    fi
fi

