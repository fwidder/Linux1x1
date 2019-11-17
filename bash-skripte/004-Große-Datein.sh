#!/bin/bash
echo Die 10 größten Datein in $1 sind: 
pushd $1
du -h * | sort -hr | head -n 10
popd
