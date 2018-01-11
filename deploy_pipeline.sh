fly -t concourse-gcp-new set-pipeline -p test_pr_resource -c <(spruce merge ci/test.yml token.yml) 
