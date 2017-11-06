# This script provisions a GKE cluster
#! /bin/bash -e
response=$(gcloud container clusters describe $1 --zone $4 || echo "ClusterNotFound")

if [[ $response = "ClusterNotFound" ]]
then
   echo "cluster not found, creating cluster"
   gcloud container clusters create $1 --num-nodes=$2 --machine-type=$3
else
   echo "cluster already exists, skipping creating cluster"
fi
