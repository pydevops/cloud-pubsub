## install dependencies if needed
```
pip install -r requirements.txt
```

Or if you prefer **pipenv**

```
pipenv shell #(3.7 used at the time by default)
pipenv install google-cloud-storage
pipenv install google-cloud-pubsub
``` 

## set up GOOGLE_APPLICATION_CREDENTIALS
Please generate a json key for the service account if needed. 
```
export GOOGLE_APPLICATION_CREDENTIALS=<svc>.json
```
## configure cloud pubsub
```
./setup_pubsub.sh
```

## run
on a laptop or on a GCE instance
```
./copier.sh
```

## testing a file upload
with size desired
```
INPUT_BUCKET=pso-victory-dev-8f039964-e2bb-11e8-b17e-1700de069414
(OSX) mkfile -n 100m 100m
gsutil cp 100m gs://${INPUT_BUCKET}

(OSX) mkfile -n 1g 1g
gsutil -o GSUtil:parallel_composite_upload_threshold=200M cp 1g gs://${INPUT_BUCKET}
```
