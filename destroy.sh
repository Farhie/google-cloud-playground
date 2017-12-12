#!/bin/bash
set -e

if [ "$#" -ne 3 ]; then
    echo "Three parameters expected. 1: project id, 2: region, 3: environment"
    exit 1;
fi

export GOOGLE_PROJECT=$1
export GOOGLE_REGION=$2
export ENVIRONMENT=$3

cd infrastructure-template
terraform init

terraform destroy -var-file=../variables/$3/environment.tfvars
