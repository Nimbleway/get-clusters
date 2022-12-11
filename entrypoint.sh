#!/bin/sh

set -e
#set -x
#set -v
 CLUSTERS=$(doctl kubernetes cluster list --format Name,Tags |grep ${CLUSTER_NAME} |cut -d ' ' -f1)

 IFS=$'\n' read -r -d '' -a MODIFY <<< $CLUSTERS
  
 RESULT=$(jq -n '$ARGS.positional' --args "${MODIFY[@]}")
 echo $RESULT
 echo "names=$(echo $RESULT)" >> $GITHUB_OUTPUT
 echo 0