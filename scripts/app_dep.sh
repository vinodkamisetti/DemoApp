#!/bin/bash

# Deploy the Podinfo Helm Chart with Ingress
helm upgrade -i my-release ./helm/podinfo --set ingress.enabled=true
