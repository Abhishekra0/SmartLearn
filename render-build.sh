#!/usr/bin/env bash
# exit on error
set -o errexit

# Create a directory for the final site
mkdir -p dist

# Find our placeholder in index.html and replace it with the secret API_KEY
# Then, save the result to the new directory
sed "s|AIzaSyBncYaEWluJpjn-MGE5x3F0aIaUhzt8IMM|$apiKey|g" index.html > dist/index.html