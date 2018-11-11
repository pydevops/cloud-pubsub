#!/usr/bin/env bash
set -euo pipefail
INPUT_BUCKET=pso-victory-dev-8f039964-e2bb-11e8-b17e-1700de069414
INPUT_TOPIC_NAME=input-topic
INPUT_SUB=input-sub

# create topic and sub shared among input bucket
gsutil notification create -t  ${INPUT_TOPIC_NAME} -e OBJECT_FINALIZE -f json gs://${INPUT_BUCKET}
gsutil notification list gs://${INPUT_BUCKET}

# This is one time set up for a shared topic. 
#gcloud pubsub subscriptions create --topic ${INPUT_TOPIC_NAME} ${INPUT_SUB}


# pull message off the topic
# gcloud pubsub topics publish ${TOPIC_NAME} --message "hello"
# gcloud pubsub subscriptions pull --auto-ack ${INPUT_SUB}
# create topic and sub for upload event only 
# gcloud pubsub topics create ${OUTPUT_TOPIC_NAME}
# gcloud pubsub subscriptions create --topic ${OUTPUT_TOPIC_NAME} ${OUTPUT_SUB}

