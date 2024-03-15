#!/bin/bash

site="https://www.google.com"
vulnerabilidade="CVE-2014-6271"

echo
resultado=$(curl -s -I "$site" | grep "$vulnerabilidade")

if [ -n "$resultado" ]; then
	echo "Vulnerabilidade encontrada"
else
	echo "Vulnerabilidade não encontrada"
fi
