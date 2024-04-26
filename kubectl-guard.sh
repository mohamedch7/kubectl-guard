#!/bin/bash

# Get the current kubectl context
CURRENT_CONTEXT=$(kubectl config current-context)

# List of potentially dangerous commands
DANGEROUS_COMMANDS=("apply" "delete")

# Check if the current command is one of the dangerous commands
for cmd in "${DANGEROUS_COMMANDS[@]}"; do

# We need always to use the word "prod" in the prod-cluster's name
# $1: the first argument passed to the script
if [[ "$1" == "$cmd" && "$CURRENT_CONTEXT" == *prod* ]]; then
        echo -e "\033[0;31mWarning! You are about to execute '$cmd' on the '$CURRENT_CONTEXT' cluster.\033[0m"
        read -p "Are you sure you want to continue? [y/N]: " -r
        if [[ ! $REPLY =~ ^[Yy]$ ]]; then
            echo "Operation aborted!"
            exit 1
        fi
    fi
done

# Execute the original kubectl command
# $@: refers to all arguments passed to the script
kubectl "$@"
