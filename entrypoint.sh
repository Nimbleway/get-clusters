#!/bin/bash

GET_ALL="${GET_ALL:-false}"

if [ $GET_ALL = true ]; then
  CLUSTERS=$(doctl kubernetes cluster list --no-header --format Name,Tags |cut -d ' ' -f1)
  IFS=$'\n' read -r -d '' -a MODIFY <<< $CLUSTERS
  RESULT=$(jq -n '$ARGS.positional' --args "${MODIFY[@]}")
  echo $RESULT
  echo "ocids=$(echo $RESULT)" >> $GITHUB_OUTPUT
else
  CLUSTERS=$(doctl kubernetes cluster list --no-header --format Name,Tags | grep ${ENVIRONMENT} |  awk '{print $1}' | grep ${CLUSTER_NAME} |cut -d ' ' -f1)
  IFS=$'\n' read -r -d '' -a MODIFY <<< $CLUSTERS
  RESULT=$(jq -n '$ARGS.positional' --args "${MODIFY[@]}")
  echo $RESULT
  echo "ocids=$(echo $RESULT)" >> $GITHUB_OUTPUT
fi

