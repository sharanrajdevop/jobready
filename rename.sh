#!/bin/bash
echo "Creating a new Dir to move the existing .war file"
mkdir -p /home/ubuntu/CI
mv /home/ubuntu/workspace/CI/target/wezvaweb-1.0-SNAPSHOT.war /home/ubuntu/CI//wezvaweb-1.0-SNAPSHOT$(date +%F-%H:%M).war && touch wezvaweb-1.0-SNAPSHOT.war