#!/bin/bash

# Put your code here

pow() {
    echo $(( $1 ** $2 ))
}

shortest() {
  min=()
  for i in "$@"; do
    if [ ${#min} -eq 0 ]; then
      min+=("$i")
    elif [[ ${#i} -lt "${#min[0]}" ]]; then
      min=("$i")
    elif [[ ${#i} -eq "${#min[0]}" ]]; then
      min+=("$i")
    fi
  done
  echo "${min[@]}" | xargs -n 1
}

print_log() {
    param_msg=${*}
    echo "[$(date +%F" "%R)] $param_msg"
}
