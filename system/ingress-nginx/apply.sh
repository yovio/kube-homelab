#!/bin/sh

VALUES="values.yaml"

helm template \
    --dependency-update \
    --include-crds \
    --create-namespace \
    --namespace system \
    --values "${VALUES}" \
    ingress-nginx . \
    | kubectl apply -n system -f -