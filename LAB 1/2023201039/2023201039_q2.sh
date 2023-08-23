#! /bin/bash
ls $1 -a | grep -i "^F" | grep -v -E "\.cpp"
