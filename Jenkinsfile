pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout the code from the repository
                git branch: 'main', url: 'https://github.com/fakeusers0/Calculator.git'
            }
        }

        stage('Check Python and Pip') {
            steps {
                // Check if Python is installed
                sh 'python3 --version || exit 1'
                // Check if pip is installed
                sh 'pip3 --version || exit 1'
            }
        }

        stage('Install Dependencies') {
            steps {
                // Install the project dependencies
                sh 'pip3 install -r calculator/requirements.txt'
            }
        }

        stage('Test') {
            steps {
                // Run the tests
                sh 'pytest test'
            }
        }

        stage('Build') {
            steps {
                // Package the application
                sh 'python3 setup.py sdist'
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
