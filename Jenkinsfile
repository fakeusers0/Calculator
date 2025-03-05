pipeline {
    agent {
        docker {
            image 'python:3.12'
            args '-u root' // Run as root to install dependencies
        }
    }

    environment {
        PYTHONPATH = "${WORKSPACE}"
    }

    stages {
        stage('Checkout') {
            steps {
                // Checkout the code from the repository
                git branch: 'main', url: 'https://github.com/fakeusers0/Calculator.git'
            }
        }

        stage('Install Dependencies') {
            steps {
                // Install the project dependencies
                sh 'pip install --upgrade pip'
                sh 'pip install --upgrade pip setuptools'
                sh 'pip install -r calculator/requirements.txt'
            }
        }

        stage('Test') {
            steps {
                // Run the tests
                sh 'pytest calculator/test/'
            }
        }

        stage('Build') {
            steps {
                // Package the application
                sh 'python setup.py sdist'
            }
        }

        stage('Deploy') {
            steps {
                // Deploy the application (this is just a placeholder, replace with actual deployment steps)
                echo 'Deploying the application...'
            }
        }
    }
}
