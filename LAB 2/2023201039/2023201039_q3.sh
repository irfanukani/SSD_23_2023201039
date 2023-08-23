#!/bin/bash

files=($(ls $1 | grep ".cpp"))

for fileName in "${files[@]}"; do
   cat "$1/$fileName" | grep "#include"
done
