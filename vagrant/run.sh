#!/bin/zsh

for i in {1..$(cat Vagrantfile| awk '/^\$num_instances/{print $3}')} ; do vagrant up centos0${i} ; done
