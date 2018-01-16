fly -t concourse-gcp-new sync || exit 1

fly -t concourse-gcp-new set-pipeline -p test_pr_resource -c <(spruce merge ci/test.yml token.yml) 
