#!/bin/bash
#custom_command
path=$(cat tmpp.txt)
cd ~
export PATH="$PATH:$path"
exec bash

