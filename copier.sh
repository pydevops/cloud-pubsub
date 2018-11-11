#!/usr/bin/env bash
set -euo pipefail
INPUT_BUCKET=pso-victory-dev-8f039964-e2bb-11e8-b17e-1700de069414
OUTPUT_BUCKET=pso-victory-dev-data
INPUT_SUB=input-sub
PROJECT_ID=$(gcloud config get-value project)

PROJECT_ID=${PROJECT_ID} INPUT_SUB=${INPUT_SUB} OUTPUT_BUCKET=${OUTPUT_BUCKET} python copier.py

# Testing
# copy data
# gsutil -o GSUtil:parallel_composite_upload_threshold=200M cp 1g gs://pso-victory-dev-8f039964-e2bb-11e8-b17e-1700de069414/
# read pubsub
# gcloud pubsub subscriptions pull --auto-ack input-sub --limit 10

