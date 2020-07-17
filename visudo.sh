#!/usr/bin/env bash

# Make sudo exutable without a password.
echo '$USER ALL=(ALL) NOPASSWD:ALL' | sudo EDITOR='tee -a' visudo
