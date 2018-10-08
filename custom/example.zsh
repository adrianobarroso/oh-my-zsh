# You can put files here to add functionality separated per file, which
# will be ignored by git.
# Files on the custom/ directory will be automatically loaded by the init
# script, in alphabetical order.

# For example: add yourself some shortcuts to projects you often work on.
#
# brainstormr=~/Projects/development/planetargon/brainstormr
# cd $brainstormr
#

#function rails_c

function rails_c_youse() {

  local ip=$1
  local id=$2

  echo "Entering rails console with docker ip: ${ip} and id: ${id}"
  docker --host $ip exec -u youse -it $id bin/rails c
}

function console_youse() {

  local ip=$1
  local id=$2

  echo "Entering instance console with docker ip: ${ip} and id: ${id}"
  docker --host $ip exec -u youse -it $id /bin/bash
}
