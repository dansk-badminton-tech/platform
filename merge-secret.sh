#!/bin/bash

kubectl create secret -n nembadminton generic nembadminton --dry-run=client --from-literal=PUSHER_APP_SECRET=password -o json | kubeseal --cert ~/projects/nembadminton-infrastructure/infrastructure/sealed-secrets/pub-sealed-secrets.pem -o yaml --merge-into production/nembadminton-secrets-sealed.yaml