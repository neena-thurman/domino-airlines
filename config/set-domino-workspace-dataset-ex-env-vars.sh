#!/bin/bash
if [ -z "${INPUT_DATA}" ]
then
  export INPUT_DATA=airlines_10k.csv
fi

export PATH_WD=$DOMINO_WORKING_DIR
export PATH_DATA=$HOME/datasets/$DOMINO_STARTING_USERNAME/$DOMINO_PROJECT_NAME/scratch
export PATH_INPUT_DATA=$PATH_DATA
export PATH_OUTPUT_DATA=$PATH_DATA
export PATH_ARTIFACTS=$HOME/files/$DOMINO_PROJECT_NAME
export PATH_INPUT_ARTIFACTS=$PATH_ARTIFACTS
export PATH_OUTPUT_ARTIFACTS=$PATH_ARTIFACTS

cp $HOME/datasets/airlines/* $PATH_DATA/
