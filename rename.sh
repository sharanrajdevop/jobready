#!/bin/bash
echo "Creating a new Dir to move the existing .war file"
mkdir -p /home/ubuntu/Prj-wezvaweb-CI/
mv /home/ubuntu/workspace/CI/target/wezvaweb-1.0-SNAPSHOT.war /home/ubuntu/Prj-wezvaweb-CI/wezvaweb-1.0-SNAPSHOT-$(date +%F-%H:%M).war