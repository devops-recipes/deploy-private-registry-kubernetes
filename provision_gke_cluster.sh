# This script provisions a GKE cluster
#! /bin/bash -e

gcloud container clusters create $1 --num-nodes=1 --machine-type=n1-standard-1
