#!/usr/bin/env groovy

node {
    stage('checkout') {
        checkout scm
    }

    stage('check java') {
        sh "java -version"
    }

    stage('install pdf converter'){
	sudo apt-get install unoconv
    }

    stage('convert to pdf'){
        sh "doc2pdf *.docx -o latestResume.pdf"
    }

    stage('commit to scm'){
	sh "git add --all"
	sh 'git commit -m "Latest Resume Built with Jenkins"'
	sh 'git push -u origin master'
    }
}
