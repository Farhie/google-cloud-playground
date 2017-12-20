# google-cloud-playground

## Setup
- Get a [Google Cloud account](https://cloud.google.com). Free trial with $300 credit.
- Create a new project and make a note of the project ID
- Enable Google [Compute Engine API](https://console.developers.google.com/apis/api/compute.googleapis.com)
- This will create a default [Compute Engine Service Account](https://console.developers.google.com/iam-admin/serviceaccounts/)
- Go to the service account, create a key and download as json
- Store json file in `~/.google_cloud/account.json`

## GCP Offerings
- Spanner: [see the readme](spanner/Spanner.md)

## To Run
- Plan: `./plan.sh PROJECT_ID us-central1 development`
- Apply: `./apply.sh PROJECT_ID us-central1 development`
- Destroy: `./detroy.sh PROJECT_ID us-central1 development`
