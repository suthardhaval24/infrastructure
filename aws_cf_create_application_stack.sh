#taking name from user
echo "Enter the stack name to be created"
read sName

#declaring values
mAwsRegion=us-east-1
mVPCName=CloudDemo
mVPCSubnetCidrBlock=10.0.0.0/16
mAvailabilityZone1=a
mAvailabilityZone2=b
mAvailabilityZone3=c
mSubnetCidrBlock1=10.0.1.0/24
mSubnetCidrBlock2=10.0.2.0/24
mSubnetCidrBlock3=10.0.3.0/24
mRouteIpaddress=0.0.0.0/0
mkeyName=awswebapp
mAmiId=ami-0eb08f83893055314
mEC2InstanceSize=8
mRDSInstanceSize=8
mRDSPublicAccessibility=false
mNameTag=CloudDemoEC2
mAccountno=910644426425
StackName=$sName

echo "$sName Stack creation in progress..."

#command build
stackID=$(aws cloudformation create-stack \
  --stack-name $sName \
  --template-body file://application.json \
  --region $mAwsRegion \
  --capabilities CAPABILITY_NAMED_IAM \
  --parameters \
  ParameterKey=VPCName,ParameterValue=$mVPCName \
  ParameterKey=VPCSubnetCidrBlock,ParameterValue=$mVPCSubnetCidrBlock \
  ParameterKey=AvailabilityZone1,ParameterValue=$mAvailabilityZone1 \
  ParameterKey=AvailabilityZone2,ParameterValue=$mAvailabilityZone2 \
  ParameterKey=AvailabilityZone3,ParameterValue=$mAvailabilityZone3 \
  ParameterKey=PublicSubnetCidrBlock1,ParameterValue=$mSubnetCidrBlock1 \
  ParameterKey=PublicSubnetCidrBlock2,ParameterValue=$mSubnetCidrBlock2 \
  ParameterKey=PublicSubnetCidrBlock3,ParameterValue=$mSubnetCidrBlock3 \
  ParameterKey=RouteIpaddress,ParameterValue=$mRouteIpaddress \
  ParameterKey=keyName,ParameterValue=$mkeyName \
  ParameterKey=AmiId,ParameterValue=$mAmiId \
  ParameterKey=EC2InstanceSize,ParameterValue=$mEC2InstanceSize \
  ParameterKey=RDSInstanceSize,ParameterValue=$mRDSInstanceSize \
  ParameterKey=RDSPublicAccessibility,ParameterValue=$mRDSPublicAccessibility \
  ParameterKey=NameTag,ParameterValue=$mNameTag \
  ParameterKey=Accountno,ParameterValue=$mAccountno \
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
