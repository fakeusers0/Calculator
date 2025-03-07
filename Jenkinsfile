pipeline {
    agent {
        dockerfile {
            filename 'Dockerfile'
            dir '.'  
        }
    }
    
    environment {
        PYTHONPATH = "${WORKSPACE}"  
    }
    
    stages {
        stage('Checkout') {
            steps {
                // Clone the GitHub repository
                git branch: 'main', url: 'https://github.com/fakeusers0/Calculator.git'
            }
        }
        
        stage('Install Dependencies') {
            steps {
                // Dependencies are already installed in the Docker image
                echo 'Dependencies installed in Docker image'
            }
        }
        
        stage('Test') {
            steps {
                // Run unit tests using pytest
                sh 'pytest test'  
            }
        }
        
        stage('Build') {
            steps {
                // Package the application for distribution
                sh 'python setup.py sdist'
            }
        }
        
        stage('Deploy') {
            steps {
                // Placeholder for deployment steps
                echo 'Deploying the application...'
            }
        }
    }
}
