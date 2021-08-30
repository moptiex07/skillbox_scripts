#!/bin/bash
  
date=`date +'%D'`


tar -zcpf /home/devops/backup/$date.tar.gz /home/max
