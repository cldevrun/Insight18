kops create cluster \
--name sparkdev18.com \
--node-size m4.large \
--master-size m4.large \
--node-count 5 \
--zones us-west-2a \
--state s3://sparkdev18.com \
--yes


kops validate cluster \
--name sparkdev18.com \
--state s3://sparkdev18.com

kops delete cluster \
--name sparkdev18.com \
--state s3://sparkdev18.com  \
--yes
