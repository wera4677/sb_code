pipeline {
    agent any
    
    tools {
        maven 'my_maven'
    }
    environment {
        GITNAME = 'oolralra'            #여러분들의 깃허브계정
        GITEMAIL = 'oolralra@gmail.com' #여러분들의 이메일
        GITWEBADD = 'https://github.com/oolralra/sb_code.git'
        GITSSHADD = 'git@github.com:oolralra/sb_code.git'
        GITCREDENTIAL = 'git_cre'       #아까 젠킨스 credential에서 생성했었음.
    }
        
    stages {
        stage('Build') {
            steps {
                echo 'Building..'
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
            }
        }
    }
}