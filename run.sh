#!/bin/bash

ENV=${ENV:-"dev"}
echo "Executing on" $ENV "Environment"

# Profile : production, picks application-production.properties and dev picks application-dev.(properties|yml)

cd /opt/
exec java -jar -Dspring.profiles.active=$ENV target/boot-teh-0.0.1-SNAPSHOT.jar

