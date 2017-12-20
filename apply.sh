#!/bin/bash
set -e

if [ "$#" -ne 3 ]; then
    echo "Three parameters expected. 1: project id, 2: region, 3: project to build (i.e. spanner)"
    exit 1;
fi

export GOOGLE_PROJECT=$1
export GOOGLE_REGION=$2
PROJECT_TO_BUILD=$3

cd ${PROJECT_TO_BUILD}
terraform init

terraform apply -var-file=../variables/environment.tfvars
