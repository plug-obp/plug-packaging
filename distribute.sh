#!/bin/bash

TARGET=/Volumes/mocs-artefacts/OBP2/v1.0.0-$(date +"%y_%m_%d")

./gradlew clean build publish --refresh-dependencies

rsync -a obp2/build/distributions/ 			            "${TARGET}"
rsync -a obp2-headless/build/distributions/ 		    "${TARGET}"
rsync -a obp2-remote/build/distributions/ 		      "${TARGET}"
rsync -a obp2-remote-headless/build/distributions/ 	"${TARGET}"
rsync -a obp2-simulator/build/distributions/ 		    "${TARGET}"
rsync -a obp2-oneway/build/distributions/ 		    "${TARGET}"
