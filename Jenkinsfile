pipeline { 
    agent any
    stages {
        stage('Checkout Utils') {
            steps {
                //checkout([$class: 'GitSCM', 
                //branches: [[name: '*/master']], 
                //doGenerateSubmoduleConfigurations: false, 
                //extensions: [[$class: 'RelativeTargetDirectory', 
                //relativeTargetDir: '/opt/private-repo']], 
                //submoduleCfg: [], 
                //userRemoteConfigs: [[url: 'https://spideathon:Ideathon@19@github.com/spideathon/DevOpsUtils.git']]])
                //withCredentials([[$class: 'DevOpsUtilCreds', credentialsId: 'gitcred',
                //    usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD']]) {

                //println(env.USERNAME)
                //println(env.PASSWORD)     
                //}    
                //script {
                //    def username = "spideathon"
                //    def password = "Ideathon@19"
                git url: 'https://github.com/spideathon/DevOpsUtils.git', branch: 'master', credentialsId: 'jenkinscred'
                //}
                
            }
        }
        stage('Clone') {
            steps {
                echo 'Dockerize'
                sh 'ansible-playbook gitclone.yml -e "giturl=dshah4960/demo.git" -e "ansible_become_method=enable" -e "ansible_become_user=root" -e "ansible_become_password=darshil"'
            }
        }
        stage('Build') {
            steps {
                echo 'Dockerize'
                sh 'ansible-playbook dockerize.yml -e "module=demo" -e "ansible_become_method=enable" -e "ansible_become_user=root" -e "ansible_become_password=darshil"'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploy on cloud'
                sh 'ansible-playbook deploy_docker.yml -e "build_name=demo:latest" -e "image_stream=demo" -e "image_stream=dshah4960/ideathon:latest" -e "ansible_become_method=enable" -e "ansible_become_user=root" -e "ansible_become_password=darshil"'
            }
        }
    }
} //pipeline
