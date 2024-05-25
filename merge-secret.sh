#!/bin/bash

kubectl create secret -n nembadminton generic nembadminton --dry-run=client --from-literal=DB_PASSWORD=password -o json | kubeseal --cert ./pub-sealed-secrets.pem -o yaml --merge-into production/nembadminton-secrets-sealed.yaml