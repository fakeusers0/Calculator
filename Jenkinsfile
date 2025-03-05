pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout the code from the repository
                git 'https://github.com/fakeusers0/Calculator.git'
            }
        }

        stage('Install Dependencies') {
            steps {
                // Install the project dependencies
                sh 'pip install -r requirements.txt'
            }
        }

        stage('Test') {
            steps {
                // Run the tests
                sh 'pytest tests'
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
