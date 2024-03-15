#!/bin/bash

echo "Check vailable update"
apt-get update
apt-get upgrade -s | grep "upgraded,"
