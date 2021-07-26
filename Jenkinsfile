pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh 'docker build -t hellogradle:main-1.0.${BUILD_NUMBER}-${GIT_COMMIT} .'
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
                sh 'docker build -t hellogradle:main-1.0.${BUILD_NUMBER}-${GIT_COMMIT} .'
            }
        }
    }
}