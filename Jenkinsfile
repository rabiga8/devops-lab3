pipeline {
    agent any
    stages {
        stage('1. Checkout') {
            steps {
                // Check out the source code from GitHub
                git 'https://github.com/rabiga8/devops-lab3.git'
            }
        }
        
        stage('2. Build Maven Project') {
            steps {
               withMaven(globalMavenSettingsConfig: '', jdk: '', maven: 'maven', mavenSettingsConfig: '', traceability: true) {
               // some block
              }
            }
        }
        
        // stage('Docker Build') {
        //     steps {
        //         // Build Docker image
        //         sh 'docker build -t your-dockerhub-username/your-image-name .'
        //     }
        // }
        
        // stage('Docker Login') {
        //     steps {
        //         // Login to Docker Hub
        //         withCredentials([usernamePassword(credentialsId: 'docker-hub-credentials', usernameVariable: 'DOCKERHUB_USERNAME', passwordVariable: 'DOCKERHUB_PASSWORD')]) {
        //             sh "docker login -u $DOCKERHUB_USERNAME -p $DOCKERHUB_PASSWORD"
        //         }
        //     }
        // }
        
        // stage('Docker Push') {
        //     steps {
        //         // Push Docker image to Docker Hub
        //         sh 'docker push your-dockerhub-username/your-image-name'
        //     }
        // }
    }
}
