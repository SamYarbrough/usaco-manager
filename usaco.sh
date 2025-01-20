#!/bin/bash

if [ "$1" = 'new' ]; then
  SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
  cp ${SCRIPT_DIR}/template.cpp ${2}.cpp
  touch ${2}.in
  echo "generated prog "$2
elif [ "$1" = 'run' ]; then
  echo "building "$2
  g++ -std=c++14 ${2}.cpp -o $2
  echo "running "$2
  ./$2
  echo "${2}.out:"
  cat ${2}.out
elif [ "$1" = 'help' ]; then
  if [ "$2" = 'help' ]; then
    echo "ask help on \"help\", \"new\", or \"run\""
  elif [ "$2" = 'new' ]; then
    echo "generates a new program named [arg 2]"
  elif [ "$2" = 'run' ]; then
    echo "builds, runs, and outputs result of [arg 2]"
  else
    echo "usage:"
    echo "  help [help, new, run]"
    echo "  new [program]"
    echo "  run [program]"
  fi
else
  echo "run [\$ usaco help ] for usage"
fi

