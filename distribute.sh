#!/bin/bash

TARGET=~/Downloads/obp2-distribution

./gradlew clean build publish --refresh-dependencies

rsync -a obp2/build/distributions/ 			${TARGET}
rsync -a obp2-headless/build/distributions/ 		${TARGET}
rsync -a obp2-jpro/build/distributions/ 		${TARGET}
rsync -a obp2-remote/build/distributions/ 		${TARGET}
rsync -a obp2-remote-headless/build/distributions/ 	${TARGET}
rsync -a obp2-simulator/build/distributions/ 		${TARGET} 
