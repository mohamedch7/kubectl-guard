#!/bin/bash

# Get the current kubectl context
CURRENT_CONTEXT=$(kubectl config current-context)

# List of potentially dangerous commands
DANGEROUS_COMMANDS=("apply" "delete")

# Identifier for production clusters
PROD_IDENTIFIER="prod"

# Check if the current command is dangerous and the context is a production cluster
if [[ " ${DANGEROUS_COMMANDS[*]} " =~ " $1 " && "$CURRENT_CONTEXT" == *"$PROD_IDENTIFIER"* ]]; then
    echo -e "\033[0;31mWarning! You are about to execute '$1' on the '$CURRENT_CONTEXT' cluster.\033[0m"
    read -p "Are you sure you want to continue? [y/N]: " -r
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        echo "Operation aborted!"
        exit 1
    fi
fi

# Execute the original kubectl command
kubectl "$@"
