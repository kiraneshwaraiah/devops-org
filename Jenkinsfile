node {
    def app
    
    stage ('clone repository') {
        /*lets make sure we have the repository cloned to our workspace */
        checkout scm
    
        stage ('build image) {
            /*This buils the actual image: Synonymous to
            *docker buils on the command line */
        app = docker.build("root/Devops-org")
        }
Stage ('test image') {
    /*Ideally we would run a test freamework  against our image */'
app.inside {
    sh 'echo "test passed"'
    }
}
    
stage ('push image') {
    
    docker.withregistery('http://registery.hub.docker.cm', 'docker-hub-credentials') {
        app.push ("${env.build_number}")
        app.push("latest")
    }
}
    } 
