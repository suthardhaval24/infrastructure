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
 3. TO create an application stack on aws cloudformation 
    1. set value of variables in aws_cf_create_application_stack.sh shell file
    2. all the details regarding VPC creation and application stack can be found in application.json
    3. To create an application stack run aws_cf_create_application_stack.sh file
        > sh aws_cf_create_application_stack.sh 
    4. To delete stack run aws_cf_delete_stack.sh file and provide stack name and region
        > sh aws_cf_delete_stack.sh                                                                               
 4. TO create an application stack with CI/CD configuration on aws cloudformation 
     1. set value of variables in aws_cf_create_CI_CD.sh shell file
     2. all the details regarding VPC creation and application stack can be found in ci_cd.json
     3. To create an application stack run aws_cf_create_.CI_CD.sh file
         > sh aws_cf_create_CI_CD.sh 
     4. To delete stack run aws_cf_delete_stack.sh file and provide stack name and region
         > sh aws_cf_delete_stack.sh

## NOTE

In each step, the cloudformation script is getting expanded from Network,Application and CI/CD configuration.