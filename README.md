# infrastructure as code

## Student Information

| Name | NEU ID | Email Address |
| --- | --- | --- |
| Dhaval Suthar | 001475572 | suthar.d@husky.neu.edu |


## Run Instruction 
 1. clone directory to you workspace
 2. To create network stack on aws cloudformation 
    1. set value of variables in aws_cf_create_stack.sh shell file 
    2. all the details regarding VPC creation can be found in networking.json 
    3. To create a network stack run aws_cf_create_stack.sh file
        > sh aws_cf_create_stack.sh
    4. To delete stack run aws_cf_delete_stack.sh file and provide stack name and region
        > sh aws_cf_delete_stack.sh                                                                
 3. To create an application stack on aws cloudformation 
    1. set value of variables in aws_cf_create_application_stack.sh shell file
    2. all the details regarding VPC creation and application stack can be found in application.json
    3. To create an application stack run aws_cf_create_application_stack.sh file
        > sh aws_cf_create_application_stack.sh 
    4. To delete stack run aws_cf_delete_stack.sh file and provide stack name and region
        > sh aws_cf_delete_stack.sh                                                                               
 4. To create an application stack with CI/CD configuration on aws cloudformation 
     1. set value of variables in aws_cf_create_CI_CD.sh shell file
     2. all the details regarding VPC creation and application stack can be found in ci_cd.json
     3. To create an application stack run aws_cf_create_.CI_CD.sh file
         > sh aws_cf_create_CI_CD.sh 
     4. To delete stack run aws_cf_delete_stack.sh file and provide stack name and region
         > sh aws_cf_delete_stack.sh
 5. To create an application stack with auto scaling configuration on aws cloudformation 
      1. set value of variables in aws_auto_scaling.sh shell file
      2. all the details regarding VPC creation and application stack can be found in autoscaling.json
      3. To create an application stack run aws_cf_auto_scaling.sh file
          > sh aws_cf_auto_scaling.sh 
      4. To delete stack run aws_cf_delete_stack.sh file and provide stack name and region
          > sh aws_cf_delete_stack.sh
 6. To create an application stack with auto scaling configuration and Lambda and SNS on aws cloudformation 
       1. set value of variables in aws_cf_lambda_ses.sh shell file
       2. all the details regarding VPC creation and application stack can be found in lambda_SES.json
       3. To create an application stack run aws_cf_lambda_ses.sh file
           > sh aws_cf_lambda_ses.sh 
       4. To delete stack run aws_cf_delete_stack.sh file and provide stack name and region
           > sh aws_cf_delete_stack.sh
 7. To create an application stack with auto scaling configuration and Lambda and SNS with Secure Cloud on aws cloudformation 
       1. set value of variables in aws_cf_secure_cloud.sh shell file
       2. all the details regarding VPC creation and application stack can be found in secure_cloud.json
       3. To create an application stack run aws_cf_secure_cloud.sh file
            > sh aws_cf_secure_cloud.sh 
       4. To delete stack run aws_cf_delete_stack.sh file and provide stack name and region
            > sh aws_cf_delete_stack.sh
    
## NOTE

### Import SSL Certificate Using AWS CLI :

* The PEM-encoded certificate is stored in a file named Certificate.pem.

* The PEM-encoded certificate chain is stored in a file named CertificateChain.pem.

* The PEM-encoded, unencrypted private key is stored in a file named PrivateKey.pem.

* To use the following example, replace the file names with your own and type the command on one continuous line. 

  	$ aws acm import-certificate --certificate file://Certificate.pem
                                 --certificate-chain file://CertificateChain.pem
                                 --private-key file://PrivateKey.pem
                                 
### In each step, the cloudformation script is getting expanded from Network,Application and CI/CD configuration.