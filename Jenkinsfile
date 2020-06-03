#!/usr/bin/env groovy

node {
    stage "Prepare environment"
        checkout scm
	sh "cmd=\$(cat run_server.sh)"
	sh "\$(\$cmd)" 

    stage "Convert to PDF"
	sh "curl --form file=@resume.docx http://localhost:7080/unoconv/pdf > latestResume.pdf"

    stage "Upload to git"
	sh "git add latestResume.pdf"
	sh "git commit -am 'Latest Resume'"
	sh "git push -u origin master"

    stage "Stop container"
	sh "docker stop unoconv"
}
