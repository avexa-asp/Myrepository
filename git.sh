#!/bin/bash

GIT=`which git`
REPO_DIR=/home/asus/Myrepository
cd ${REPO_DIR}
${GIT} add --all .
${GIT} commit -m "Test commit"
${GIT} push -u origin master  
