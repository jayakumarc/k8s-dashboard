#!/usr/bin/env bash
set -eo pipefail

token_secret=$(kubectl -n kubernetes-dashboard get secret | grep kubernetes-dashboard-token | awk '{print $1}')
kubectl -n kubernetes-dashboard describe secret "$token_secret" | grep token: