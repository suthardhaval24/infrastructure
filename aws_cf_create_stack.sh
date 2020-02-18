#taking name from user
echo "Enter the stack name to be created"
read sName

#declaring values
mAwsRegion=us-east-2
mVPCSubnetCidrBlock=10.0.0.0/16
mAvailabilityZone1=a
mAvailabilityZone2=b
mAvailabilityZone3=c
mSubnetCidrBlock1=10.0.1.0/24
mSubnetCidrBlock2=10.0.2.0/24
mSubnetCidrBlock3=10.0.3.0/24
mRouteIpaddress=0.0.0.0/0
StackName=$sName

echo "$sName Stack creation in progress..."

#command build
stackID=$(aws cloudformation create-stack \
  --stack-name $sName \
  --template-body file://networking.json \
  --region $mAwsRegion \
  --parameters  \
  ParameterKey=VPCSubnetCidrBlock,ParameterValue=$mVPCSubnetCidrBlock \
  ParameterKey=AvailabilityZone1,ParameterValue=$mAvailabilityZone1 \
  ParameterKey=AvailabilityZone2,ParameterValue=$mAvailabilityZone2 \
  ParameterKey=AvailabilityZone3,ParameterValue=$mAvailabilityZone3 \
  ParameterKey=PublicSubnetCidrBlock1,ParameterValue=$mSubnetCidrBlock1 \
  ParameterKey=PublicSubnetCidrBlock2,ParameterValue=$mSubnetCidrBlock2 \
  ParameterKey=PublicSubnetCidrBlock3,ParameterValue=$mSubnetCidrBlock3 \
  ParameterKey=RouteIpaddress,ParameterValue=$mRouteIpaddress \
  ParameterKey=VPCName,ParameterValue=$StackName \
  --query [StackId] --output text)

#commnad execution
#aws cloudformation wait stack-create-complete --stack-name $stackID

echo $stackID

if [ -z $stackID ]; then
  echo 'Error. Stack creation failed !!!'
  exit 1
else
  echo "Stack Creation Done !!!"
fi
