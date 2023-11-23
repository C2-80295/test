pipeline {
    agent any

    stages {
        stage ('SCM') {
            steps {
                git branch: 'master', url: 'https://c2-80295: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@github.com/C2-80295/jenkins.git'
            }
        }
        stage ('docker login') {
            steps {
                sh 'echo dckr_pat_FxQD9x_Fec84SBAiHZuCeAkz8Rs | /usr/bin/docker login -u jakejake23 --password-stdin'
            }
        }
        stage ('docker build image') {
            steps {
                sh '/usr/bin/docker build -t jakejake23/q1 .'
            }
        }
        stage ('docker push image') {
            steps {
                sh '/usr/bin/docker push jakejake23/q1'
            }
        }
        stage ('git clone/pull') {
            steps {
                sh 'if [ -d "q2" ]; then cd q2 && git pull; else git clone "https://c2-80295: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@github.com/C2-80295/test.git"; fi'
            }
        }
    }
}