#!/bin/bash
set -e

if [ "$#" -ne 3 ]; then
    echo "Three parameters expected. 1: project id, 2: region, 3: environment"
fi

GOOGLE_PROJECT=$1
GOOGLE_REGION=$2
ENVIRONMENT=$3

terraform plan -var-file=variables/$3/environment.tfvars 
