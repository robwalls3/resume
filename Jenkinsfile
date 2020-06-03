#!/usr/bin/env groovy

node {
    stage "Prepare environment"
        checkout scm
	def environment = docker.compose up -d

    stage "Move resume to resume.docx"
	sh "mv *.docx resume.docx"

    stage "Convert to PDF"
	sh "curl --form file=@resume.docx http://localhost:7080/unoconv/pdf > latestResume.pdf

    stage "Upload to git"
	sh "git commit -am 'Latest Resume'"
	sh "git push -u origin master"

}
