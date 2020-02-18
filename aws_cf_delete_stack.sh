#reading value from user
echo "Enter the stack name to be deleted"
read stack_name

echo "Enter region to delete"
read region

#echo "$StackList"

#executing command
aws cloudformation delete-stack --stack-name $stack_name --region $region
aws cloudformation wait stack-delete-complete --stack-name $stack_name

echo $stack_name "Stack is deleted successfully"
