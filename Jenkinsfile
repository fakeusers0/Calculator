pipeline {
    agent {
        docker {
            image 'python:3.12'
            args '-u root' // Run as root to install dependencies
        }
    }
    
    environment {
        PYTHONPATH = "${WORKSPACE}"  // Ensure Python finds the calculator module
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
                // Upgrade pip and install required dependencies from calculator/requirements.txt
                sh 'pip install --upgrade pip setuptools'
                sh 'pip install -r calculator/requirements.txt'
            }
        }
        
        stage('Test') {
            steps {
                // Run unit tests using pytest
                sh 'pytest test'  // Adjust based on the actual test directory
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
