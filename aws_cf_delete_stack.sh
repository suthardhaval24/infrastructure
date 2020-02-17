#reading value from user
echo "Enter the stack name to be deleted"
read stack_name

#echo "$StackList"

#executing command
aws cloudformation delete-stack --stack-name $stack_name
aws cloudformation wait stack-delete-complete --stack-name $stack_name

echo "stack_name Stack is deleted successfully"
