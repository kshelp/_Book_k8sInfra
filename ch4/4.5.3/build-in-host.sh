#!/usr/bin/env bash
docker build --no-cache -t 192.168.1.10:8443/react-app .
docker push 192.168.1.10:8443/react-app
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
