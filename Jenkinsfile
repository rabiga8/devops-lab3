pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                // Check out the source code from GitHub
                git 'https://github.com/rabiga8/devops-lab3.git'
            }
        }
        
        // stage('Build Maven Project') {
        //     steps {
        //         // Build Maven project
        //         sh 'mvn clean package'
        //     }
        // }
        
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

