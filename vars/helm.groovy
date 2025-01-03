def packHelmChart(){
     sh 'helm package .'
}

def pushChart(String repoUrl){
    sh 'curl -u admin:passw0rd ' + repoUrl + ' --upload-file test-*.tgz -v'
}