pipeline {
    agent any
    options {
        ansiColor('xterm')
    }
    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh './gradlew assemble'
                archiveArtifacts artifacts: '**/*.jar'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                //echo '\033[34mHello\033[0m \033[33mcolorful\033[0m \033[35mworld!\033[0m'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
                //sh 'docker-compose up -d'
            }
        }
    }
}