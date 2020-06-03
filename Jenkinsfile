#!/usr/bin/env groovy

node {
    stage "Prepare environment"
        checkout scm
	sh "./run_unoconv_serv.sh"

    stage "Move resume to resume.docx"
	sh "mv *.docx resume.docx"

    stage "Convert to PDF"
	sh "curl --form file=@resume.docx http://localhost:7080/unoconv/pdf > latestResume.pdf"

    stage "Upload to git"
	sh "git add latestResume.pdf"
	sh "git commit -am 'Latest Resume'"
	sh "git push -u origin master"

}
