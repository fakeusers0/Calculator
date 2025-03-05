pipeline {
    agent {
        docker {
            image 'python:3.12'
            args '-u root' // Run as root to install dependencies
        }
    }
    
    // Set PYTHONPATH to the WORKSPACE so Python can locate the "calculator" package.
    environment {
        PYTHONPATH = "${WORKSPACE}"
    }
    
    stages {
        stage('Checkout') {
            steps {
                // Check out code from your Git repo.
                git branch: 'main', url: 'https://github.com/fakeusers0/Calculator.git'
            }
        }
        
        stage('Install Dependencies') {
            steps {
                // Upgrade pip and install setuptools (required for setup.py) and other dependencies.
                sh 'pip install --upgrade pip setuptools'
                sh 'pip install -r requirements.txt'
            }
        }
        
        stage('Test') {
            steps {
                // Run tests; explicitly set PYTHONPATH so tests can import the calculator package.
                sh 'PYTHONPATH=$WORKSPACE pytest test'
            }
        }
        
        stage('Build') {
            steps {
                // Build the source distribution of your package.
                sh 'python setup.py sdist'
            }
        }
        
        stage('Deploy') {
            steps {
                // Placeholder for deployment steps.
                echo 'Deploying the application...'
            }
        }
    }
}
