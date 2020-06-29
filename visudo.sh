#!/usr/bin/env bash

echo '$USER ALL=(ALL) NOPASSWD:ALL' | sudo EDITOR='tee -a' visudo
