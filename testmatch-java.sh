#!/bin/sh
root_dir="$(dirname $0)"
cpp_player_dir=${root_dir}/system/players
java_player_dir=${root_dir}/java-player
java_classpath=${java_player_dir}/jamurai

system/manager/gameManager \
    -a ${cpp_player_dir}/greedyPlayer -p "" -u "" -n "greedy1" -r 1 -s 100 \
    -a ${cpp_player_dir}/greedyPlayer -p "" -u "" -n "greedy2" -r 2 -s 98 \
    -a ${cpp_player_dir}/randomPlayer -p "" -u "" -n "greedy3" -r 3 -s 80 \
    -a ${cpp_player_dir}/nonCheckingPlayer -p "" -u "" -n "random4" -r 4 -s 70 \
    -a ${cpp_player_dir}/tooActivePlayer -p "" -u "" -n "random5" -r 5 -s 60 \
    -a "java -cp ${java_classpath} Main"  -p "" -u "" -n "random6" -r 6 -s 20 \
    -t > log.txt
