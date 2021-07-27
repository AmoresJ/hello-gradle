pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Construyendo...'
                sh './gradlew assemble'
            }
        }
        stage('Archive') {
            steps {
                echo 'Archivando...'
                archiveArtifacts artifacts: 'build/libs/*.jar'
            }
        }
    }
}