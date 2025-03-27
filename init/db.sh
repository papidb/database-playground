#!/bin/bash

# this works but searching has a time complexity of O(n) this isn't efficient for searching 
# you might want to find an efficient way to search

db_set() {
    echo "$1,$2" >>database
}

db_get() {
    grep "^$1," database | sed -e "s/^$1,//" | tail -n 1
}