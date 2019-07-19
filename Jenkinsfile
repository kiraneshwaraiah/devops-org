node {
    def app
    stage ('clone repository') {
        checkout scm
    }
}
        stage ('build image') {
        app = docker.build("root/devops-org")
}
stage ('push image') {
    docker.withregistery('http://registery.hub.docker.cm', 'docker-hub-credentials') {
        app.push ("${env.build_number}")
        app.push("latest")
    }
}
    } 
