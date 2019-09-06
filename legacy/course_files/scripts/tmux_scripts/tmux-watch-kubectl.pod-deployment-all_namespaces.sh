#!/bin/bash

tmux new-session \; \
split-window -h -t $session:0 \; \
split-window -v -t $session:0.0 \; \
split-window -v -t $session:0.1 \; \
send-keys -t $session:0 "clear" C-m \; \
send-keys -t $session:0.0 "clear;watch kubectl get pods --all-namespaces" C-m \; \
send-keys -t $session:0.1 "clear;watch kubectl get services --all-namespaces" C-m \; \
send-keys -t $session:0.2 "clear;watch kubectl get deployments --all-namespaces" C-m \;
