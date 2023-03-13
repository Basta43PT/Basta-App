#!/bin/bash

# Check that the correct number of arguments was passed
if [ $# -ne 1 ]; then
  echo "Error: expected 1 arguments, but got $#"
  exit 1
fi

# Get the version number and Docker Compose file path from the arguments
version=$1
echo version
# Build the Dockerfile with the given version number as the tag
docker build -t itay016/basta_front:bestV$version -t itay016/basta_front:latest --build-arg HOST_URL=http://localhost:3000 --build-arg POSTGRESSQL_USER=web_user --build-arg POSTGRESSQL_PWD=claimzai_2022_it --build-arg JWT_KEY=0W3n3CeMQAY2lHbu1HerwUZVO68Ne  .
docker push itay016/basta_front:bestV$version
docker push itay016/basta_front:latest
# Use sed to search for the old version number in the Docker Compose file
# and replace it with the new version number
