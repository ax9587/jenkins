pipeline {
    agent any

    stages {
        stage('Clone Code') {
            steps {
                checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/ax9587/jenkins']])
            }
        }
        stage('Build Jar') {
            steps {
                sh "maven clean install"
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}