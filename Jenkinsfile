#!/usr/bin/env groovy

node {
    stage "Prepare environment"
        checkout scm

    stage "Convert to PDF"
	sh "\$(/bin/sh ./convert.sh)"

    stage "Upload to git"
	sh "\$(/bin/sh ./gitFast.sh)"

}
