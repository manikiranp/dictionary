#!/bin/bash 

declare -A sounds
sounds[dog]="bark"
sounds[dog]="barking"
sounds[cow]="moo"
sounds[bird]="tweet"
sounds[wolf]="howl"

echo "Dog sound " ${sounds[dog]}
echo "All animal sound " ${sounds[@]}
echo "Number of animals " ${#sounds[@]}
echo "Key values: " ${!sounds[@]}

unset sounds[dog]
echo ${sounds[dog]}




