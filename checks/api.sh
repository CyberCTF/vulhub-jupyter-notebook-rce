#!/bin/sh
# /api reports version 5.2.2, and /api/kernelspecs answers without a token.
set -e
curl -fsS http://jupyter:8888/api | grep -q '"version": *"5.2.2"'
curl -fsS http://jupyter:8888/api/kernelspecs | grep -q 'python'
